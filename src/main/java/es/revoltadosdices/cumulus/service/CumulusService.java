package es.revoltadosdices.cumulus.service;

import com.liferay.portal.kernel.json.JSONObject;
import com.liferay.portal.kernel.util.StringPool;
import es.revoltadosdices.cumulus.util.WSClient;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 *
 * @author Borxa Varela
 */
public class CumulusService {
    
    private final WSClient client;
    
    public CumulusService(String cacheKey, int cacheTime) {
        this.client = new WSClient(cacheKey, cacheTime);
    }
     
    public Map<String, String> jsonToMap(String url, String webTag) {

        HashMap<String, String> map = new HashMap();

        JSONObject json = client.getJSON(url, webTag);

        Iterator<String> iterator = json.keys();
        while (iterator.hasNext()) {
            String key = iterator.next();
            String value = json.getString(key);
            if (value.contains("{")) {
                value = StringPool.BLANK;
            }
            map.put(key, value);
        }

        return map;
    }

}
