package es.revoltadosdices.cumulus.service;

import es.revoltadosdices.cumulus.service.impl.JSONClient;

/**
 *
 * @author Borxa Varela
 */
public class CumulusServiceFactory {
    
    private CumulusServiceFactory() {};
    
    public static CumulusService getService(String cacheKey, int cacheTime) {
        
        CumulusService service = new JSONClient();
        service.setCacheKey(cacheKey);
        service.setCacheTime(cacheTime);
        
        return service;
    }
   
}
