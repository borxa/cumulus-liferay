package es.revoltadosdices.cumulus.portlet;

import aQute.bnd.annotation.component.Component;
import com.liferay.portal.kernel.settings.definition.ConfigurationBeanDeclaration;

/**
 *
 * @author Borxa Varela
 */
@Component
public class CumulusConfigurationBeanDeclaration implements ConfigurationBeanDeclaration {

    @Override
    public Class<?> getConfigurationBeanClass() {
        return CumulusConfiguration.class;
    }

}
