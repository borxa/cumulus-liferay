package es.revoltadosdices.cumulus.util;

import com.liferay.portal.kernel.cache.PortalCache;
import com.liferay.portal.kernel.cache.SingleVMPoolUtil;
import com.liferay.portal.kernel.json.JSONException;
import com.liferay.portal.kernel.json.JSONFactoryUtil;
import com.liferay.portal.kernel.json.JSONObject;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.HttpUtil;
import com.liferay.portal.kernel.util.Validator;
import java.io.IOException;
import java.net.URL;

/**
 *
 * @author Borxa Varela
 */
public class WSClient {

    private static final Log LOG = LogFactoryUtil.getLog(WSClient.class);
    private static final PortalCache<String, JSONObject> CACHE
            = SingleVMPoolUtil.getCache(WSClient.class.getName());

    private final int cacheTime;
    private final String cacheKey;

    public WSClient(String cacheKey, int cacheTime) {
        this.cacheKey = cacheKey;
        this.cacheTime = cacheTime;
    }

    final public JSONObject getJSON(String jsonURL, String webTag) {

        String key = new StringBuilder(cacheKey).append(jsonURL).append(webTag).toString();
        JSONObject json = CACHE.get(key);

        if (Validator.isNull(json)) {
            try {
                String str = HttpUtil.URLtoString(new URL(jsonURL));
                json = JSONFactoryUtil.createJSONObject(str);
                if (Validator.isNotNull(webTag) && !json.isNull(webTag)) {
                    json = json.getJSONObject(webTag);
                }
                CACHE.put(key, json, cacheTime);
            } catch (IOException | JSONException ex) {
                LOG.warn(ex.getMessage());
                json = JSONFactoryUtil.createJSONObject();
            }
        }

        return json;
    }
}
