package es.revoltadosdices.cumulus.portlet;

import aQute.bnd.annotation.component.Activate;
import aQute.bnd.annotation.component.Component;
import aQute.bnd.annotation.component.Modified;
import aQute.configurable.Configurable;
import java.util.Map;

/**
 *
 * @author Borxa Varela
 */
@Component(name = "es.revoltadosdices.cumulus.portlet.CumulusConfiguration")
public class CumulusManager {

    public String getDataURL() {
        return _configuration.dataURL();
    }

    public String getCurrentWebTags() {
        return _configuration.currentWebTags();
    }

    public int getCacheTime() {
        return _configuration.cacheTime();
    }

    @Activate
    @Modified
    protected void activate(Map<String, Object> properties) {
        _configuration = Configurable.createConfigurable(
                CumulusConfiguration.class, properties);
    }

    private volatile CumulusConfiguration _configuration;
}
