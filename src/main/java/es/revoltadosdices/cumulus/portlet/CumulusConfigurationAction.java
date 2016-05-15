package es.revoltadosdices.cumulus.portlet;

import com.liferay.portal.kernel.portlet.DefaultConfigurationAction;
import es.revoltadosdices.cumulus.service.CumulusService;
import java.util.Map;
import javax.portlet.PortletConfig;
import javax.portlet.PortletPreferences;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

/**
 *
 * @author Borxa Varela
 */
public class CumulusConfigurationAction extends DefaultConfigurationAction {

    /**
     *
     * @param portletConfig
     * @param renderRequest
     * @param renderResponse
     * @return String
     * @throws Exception
     */
    @Override
    public String render(
            PortletConfig portletConfig, RenderRequest renderRequest,
            RenderResponse renderResponse)
            throws Exception {

        PortletPreferences preferences = renderRequest.getPreferences();
        String dataUrl = preferences.getValue("dataUrl", 
                CumulusPortlet.DEFAULT_JSON);
        renderRequest.setAttribute("dataUrl", dataUrl);
        renderRequest.setAttribute("cacheTime",
                preferences.getValue("cacheTime", "0"));
        
        CumulusService service = new CumulusService("portletConfig", 0);
        Map map = service.jsonToMap(dataUrl, null);
        renderRequest.setAttribute("listWebTags", map.keySet());
        
        renderRequest.setAttribute("currentWebTags",
                preferences.getValue("currentWebTags", 
                        CumulusPortlet.DEFAULT_WEBTAG));

        return super.render(portletConfig, renderRequest, renderResponse);
    }

}
