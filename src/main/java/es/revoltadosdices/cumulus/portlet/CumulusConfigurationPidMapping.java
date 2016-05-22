package es.revoltadosdices.cumulus.portlet;

import aQute.bnd.annotation.component.Component;
import com.liferay.portal.kernel.settings.definition.ConfigurationPidMapping;

/**
 *
 * @author Borxa Varela
 */
@Component
public class CumulusConfigurationPidMapping implements ConfigurationPidMapping {

    @Override
    public Class<?> getConfigurationBeanClass() {
        return CumulusConfiguration.class;
    }

    @Override
    public String getConfigurationPid() {
        return "cumulusgauges_WAR_cumulus";
    }
    
}
