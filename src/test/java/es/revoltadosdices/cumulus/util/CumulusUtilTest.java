package es.revoltadosdices.cumulus.util;

import java.util.Map;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author borxa
 */
public class CumulusUtilTest {
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }
    
    @Test
    public void testJsonNullToMap() {
        Map<String, String> map = CumulusUtil.jsonToMap(null);
        if(map == null || !map.isEmpty()) {
            fail("If json is null, not return a empty map.");
        }
    }
}
