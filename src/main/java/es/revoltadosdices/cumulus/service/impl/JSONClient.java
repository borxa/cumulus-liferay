package es.revoltadosdices.cumulus.service.impl;

import com.liferay.portal.kernel.cache.PortalCache;
import com.liferay.portal.kernel.cache.SingleVMPoolUtil;
import com.liferay.portal.kernel.json.JSONException;
import com.liferay.portal.kernel.json.JSONFactoryUtil;
import com.liferay.portal.kernel.json.JSONObject;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.HttpUtil;
import com.liferay.portal.kernel.util.Validator;
import es.revoltadosdices.cumulus.service.CumulusService;
import java.io.IOException;
import java.net.URL;

/**
 *
 * @author borxa
 */
public class JSONClient implements CumulusService {

    private static final Log LOG = LogFactoryUtil.getLog(JSONClient.class);
    private String cacheKey = "default";
    private int cacheTime = 0;

    @Override
    public void setCacheKey(String cacheKey) {
        this.cacheKey = cacheKey;
    }

    @Override
    public void setCacheTime(int cacheTime) {
        this.cacheTime = cacheTime;
    }

    @Override
    public final String getJSON(String jsonURL, String webTag) {

        String key = new StringBuilder(cacheKey).append(jsonURL).append(webTag).toString();
        PortalCache<String, String> cache
                = SingleVMPoolUtil.getCache(JSONClient.class.getName());

        String json = cache.get(key);
        
        if (Validator.isNull(json)) {
            try {
                json = HttpUtil.URLtoString(new URL(jsonURL));
                JSONObject jsonObject = JSONFactoryUtil.createJSONObject(json);
                if (Validator.isNotNull(webTag) && !jsonObject.isNull(webTag)) {
                    json = jsonObject.getJSONObject(webTag).toString();
                }
                cache.put(key, json, cacheTime);
            } catch (IOException | JSONException ex) {
                LOG.warn(ex);
            }
        }

        return json;
    }
}
