package es.revoltadosdices.cumulus.portlet;

import com.liferay.portal.kernel.json.JSONObject;
import com.liferay.portal.kernel.portlet.PortletResponseUtil;
import com.liferay.portal.kernel.servlet.HttpHeaders;
import com.liferay.portal.kernel.servlet.SessionErrors;
import com.liferay.portal.kernel.util.ContentTypes;
import com.liferay.portal.kernel.util.GetterUtil;
import com.liferay.portal.kernel.util.Validator;
import com.liferay.util.bridges.mvc.MVCPortlet;
import es.revoltadosdices.cumulus.service.CumulusService;
import es.revoltadosdices.cumulus.util.WSClient;
import java.io.IOException;
import java.util.Map;
import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import javax.portlet.ResourceRequest;
import javax.portlet.ResourceResponse;

/**
 *
 * @author Borxa Varela
 */
public class CumulusPortlet extends MVCPortlet {

    public static final String DEFAULT_JSON = "http://meteo.a-revolta.es/data.json";
    public static final String DEFAULT_WEBTAG = "system";
    
    /**
     *
     * @param renderRequest
     * @param renderResponse
     * @throws IOException
     * @throws PortletException
     */
    @Override
    public void doView(RenderRequest renderRequest,
            RenderResponse renderResponse)
            throws IOException, PortletException {

        String jsonUrl = renderRequest.getPreferences().getValue("dataUrl", DEFAULT_JSON);
        String webTag = renderRequest.getPreferences().getValue("currentWebTags", DEFAULT_WEBTAG);
        int cacheTime = GetterUtil.getInteger(renderRequest.getPreferences().getValue("cacheTime", "0"));
        
        CumulusService service = new CumulusService(renderRequest.getWindowID(), cacheTime);
        Map<String, String> map = service.jsonToMap(jsonUrl, webTag);

        if (map.isEmpty()) {
            SessionErrors.add(renderRequest, "JSONDataNotFound");
        } else {
            for (String str : map.keySet()) {
                String value = map.get(str).replace(",", ".");
                if (Validator.isNumber(value.replace(".", "0"))) {
                    if (value.contains(".")) {
                        renderRequest.setAttribute(str, Double.parseDouble(value));
                    } else {
                        renderRequest.setAttribute(str, Integer.parseInt(value));
                    }
                } else {
                    renderRequest.setAttribute(str, value);
                }
            }
        }

        super.doView(renderRequest, renderResponse);
    }

    @Override
    public void serveResource(ResourceRequest resourceRequest, ResourceResponse resourceResponse)
            throws IOException, PortletException {
        
        String url = resourceRequest.getPreferences().getValue("dataUrl", DEFAULT_JSON);
        int cacheTime = GetterUtil.getInteger(resourceRequest.getPreferences().getValue("cacheTime", "0"));
        
        WSClient client = new WSClient("ajax", cacheTime);
        JSONObject json = client.getJSON(url, null);
        
        resourceResponse.setContentType(ContentTypes.APPLICATION_JSON);
            resourceResponse.addProperty(
                    HttpHeaders.CACHE_CONTROL, HttpHeaders.CACHE_CONTROL_PUBLIC_VALUE);
        
        PortletResponseUtil.write(resourceResponse, json.toString());
    }
}
