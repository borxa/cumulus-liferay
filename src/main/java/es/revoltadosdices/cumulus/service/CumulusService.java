package es.revoltadosdices.cumulus.service;

/**
 *
 * @author Borxa Varela
 */
public interface CumulusService {
    
    public void setCacheKey(String cacheKey);
    
    public void setCacheTime(int cacheTime);
    
    public String getJSON(String url, String webkey);
}
