<%@ include file="/init.jsp" %>

<liferay-ui:error key="JSONDataNotFound" message="json-data-not-found" />

<div id="charts" class="container-fluid">

    <c:set var="dataUrl" 
           value="http://meteo.a-revolta.es/images/"/>
    <div class="chart-thumbs" class="row-fluid">
        <div class="span2 offset1">
            <img src="${dataUrl}winddsm.png" alt="wind direction" />
            <img src="${dataUrl}rainsm.png" alt="rain" />
        </div>
        <div class="span2">
            <img src="${dataUrl}windsm.png" alt="wind" />
            <img src="${dataUrl}raintsm.png" alt="rain trend" />
        </div>
        <div class="span2">
            <img src="${dataUrl}tempsm.png" alt="temp" />
            <img src="${dataUrl}raindsm.png" alt="rain daily" />
        </div>
        <div class="span2">
            <img src="${dataUrl}intempsm.png" alt="int temp" />
            <img src="${dataUrl}tempmsm.png" alt="temp month" />
        </div>
        <div class="span2">
            <img src="${dataUrl}presssm.png" alt="press" />
            <img src="${dataUrl}humsm.png" alt="humidity" />
        </div>
    </div>
    <div id="chart-img" class="row-fluid">
        <div class="well text-center">
            <a href="${dataUrl}windd.png" title="Wind Direction">
                <img src="${dataUrl}windd.png" alt="wind direction" class="hide" />
            </a>
            <a href="${dataUrl}wind.png" title="Wind">
                <img src="${dataUrl}wind.png" alt="wind" class="hide" />
            </a>
            <a href="${dataUrl}temp.png" title="Temperature">
                <img src="${dataUrl}temp.png" alt="temp" class="hide" />
            </a>
            <a href="${dataUrl}intemp.png" title="Internal Temperature">
                <img src="${dataUrl}intemp.png" alt="int temp" class="hide" />
            </a>
            <a href="${dataUrl}press.png" title="Pressure">
                <img src="${dataUrl}press.png" alt="press" class="hide" />
            </a>
            <a href="${dataUrl}rain.png" title="Rain Fall">
                <img src="${dataUrl}rain.png" alt="rain" class="hide" />
            </a>
            <a href="${dataUrl}raint.png" title="Rain Trend">
                <img src="${dataUrl}raint.png" alt="rain trend" class="hide" />
            </a>
            <a href="${dataUrl}raind.png" title="Rain Daily">
                <img src="${dataUrl}raind.png" alt="rain daily" class="hide" />
            </a>
            <a href="${dataUrl}tempm.png" title="Temperature Month">
                <img src="${dataUrl}tempm.png" alt="temp month" class="hide" />
            </a>
            <a href="${dataUrl}hum.png" title="Humidity">
                <img src="${dataUrl}hum.png" alt="humidity" class="hide" />
            </a>
        </div>
    </div>
</div>