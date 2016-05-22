package es.revoltadosdices.cumulus.portlet;

import aQute.bnd.annotation.metatype.Meta;

/**
 *
 * @author Borxa Varela
 */
@Meta.OCD(id = "es.revoltadosdices.cumulus.portlet.CumulusConfiguration")
public interface CumulusConfiguration {

    @Meta.AD(deflt = "http://meteo.a-revolta.es/data.json", required = true)
    public String dataURL();

    @Meta.AD(deflt = "system", required = false)
    public String currentWebTags();

    @Meta.AD(required = false)
    public int cacheTime();
}
