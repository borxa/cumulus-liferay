package es.revoltadosdices.cumulus.util;

import com.liferay.portal.kernel.json.JSONException;
import com.liferay.portal.kernel.json.JSONFactoryUtil;
import com.liferay.portal.kernel.json.JSONObject;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.kernel.util.Validator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 *
 * @author Borxa Varela
 */
public class CumulusUtil {

    private static final Log LOG = LogFactoryUtil.getLog(CumulusUtil.class);

    private CumulusUtil() {
    }

    public static Map<String, String> jsonToMap(String json) {

        HashMap<String, String> map = new HashMap();

        if (Validator.isNotNull(json)) {
            try {
                JSONObject jsonObject = JSONFactoryUtil.createJSONObject(json);
                Iterator<String> iterator = jsonObject.keys();
                while (iterator.hasNext()) {
                    String key = iterator.next();
                    String value = jsonObject
                            .getString(key)
                            .replaceFirst(StringPool.OPEN_CURLY_BRACE, StringPool.BLANK);
                    map.put(key, value);
                }
            } catch (JSONException ex) {
                LOG.error(ex);
            }
        }

        return map;
    }
}
