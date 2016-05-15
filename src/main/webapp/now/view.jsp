<%@ include file="/init.jsp" %>

<liferay-ui:error key="JSONDataNotFound" message="json-data-not-found" />

<h4 class="well well-small">${location}</h4>
<h5><liferay-ui:message key="forecast" />: ${forecastenc}</h5>
<h6><liferay-ui:message key="date" />: ${time}</h6>

<liferay-ui:panel title="temperature-and-humidity" state="close">
    <div class="container-fluid">
            <div class="span6">
                <table class="table table-hover">
                    <tr>
                        <td><liferay-ui:message key="temperature" /></td>
                        <td class="right">${temp} ${tempunit}</td>
                    </tr>
                    <tr>
                        <td><liferay-ui:message key="apparent-temperature" /></td>
                        <td class="right">${apptemp} ${tempunit}</td>
                    </tr>
                    <tr>
                        <td><liferay-ui:message key="wet-thermometer" /></td>
                        <td class="right">${wetbulb} ${tempunit}</td>
                    </tr>
                    <tr>
                        <td><liferay-ui:message key="average-temperature" /></td>
                        <td class="right">${avgtemp} ${tempunit}</td>
                    </tr>
                    <tr>
                        <td><liferay-ui:message key="wind-chill" /></td>
                        <td class="right">${wchill} ${tempunit}</td>
                    </tr>
                    <tr>
                        <td><liferay-ui:message key="humidex" /></td>
                        <td class="right">${humidex} ${tempunit}</td>
                    </tr>
                    <tr>
                        <td><liferay-ui:message key="cloudbase" /></td>
                        <td class="right">${cloudbasevalue}${cloudbaseunit}</td>
                    </tr>
                </table>
            </div>
            <div class="span6">
                <table class="table table-hover">
                    <tr>
                        <td><liferay-ui:message key="humidity" /></td>
                        <td class="right">${hum}%</td>
                    </tr>
                    <tr>
                        <td><liferay-ui:message key="temperature-trend" /></td>
                        <td class="right">${temptrend} ${tempunit}</td>
                    </tr>
                    <tr>
                        <td><liferay-ui:message key="last-hour-variation" /></td>
                        <td class="right">${TempChangeLastHour} ${tempunit}</td>
                    </tr>
                    <tr>
                        <td><liferay-ui:message key="dew-point" /></td>
                        <td class="right">${dew} ${tempunit}</td>
                    </tr>
                    <tr>
                        <td><liferay-ui:message key="chill-hours" /></td>
                        <td class="right">${chillhours}</td>
                    </tr>
                    <tr>
                        <td><liferay-ui:message key="heat-index" /></td>
                        <td class="right">${heatindex} ${tempunit}</td>
                    </tr>
                    <tr>
                        <td><liferay-ui:message key="is-sun-up" /></td>
                        <td class="right">
                            <c:choose>
                                <c:when test="${IsSunUp < 1}">
                                    <liferay-ui:message key="no" />
                                </c:when>
                                <c:otherwise>
                                    <liferay-ui:message key="yes" />
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
</liferay-ui:panel>

<liferay-ui:panel title="rainfall" state="close">
    <div class="container-fluid">
            <div class="span6">
                <table class="table table-hover">
                    <tr>
                        <td>
                            <liferay-ui:message key="rainfall-rate" />
                        </td>
                        <td class="right">
                            ${rrate} ${rainunit}/h
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="rainfall-last-hour" />
                        </td>
                        <td class="right">
                            ${rhour} ${rainunit}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="rainfall-since-midnight" />
                        </td>
                        <td class="right">
                            ${rmidnight} ${rainunit}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="rainfall-last-24h" />
                        </td>
                        <td class="right">
                            ${r24hour} ${rainunit}
                        </td>
                    </tr>
                </table>
            </div>
            <div class="span6">
                <table class="table table-hover">
                    <tr>
                        <td>
                            <liferay-ui:message key="rainfall-today" />
                        </td>
                        <td class="right">
                            ${rfall} ${rainunit}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="rainfall-this-month" />
                        </td>
                        <td class="right">
                            ${rmonth} ${rainunit}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="rainfall-this-year" />
                        </td>
                        <td class="right">
                            ${ryear} ${rainunit}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="last-rainfall" />
                        </td>
                        <td class="right">
                            ${LastRainTipISO}
                        </td>
                    </tr>
                </table>
            </div>
        </div>
</liferay-ui:panel>

<liferay-ui:panel title="wind" state="close">
    <div class="container-fluid">
            <div class="span6">
                <table class="table table-hover">
                    <tr>
                        <td>
                            <liferay-ui:message key="current-wind-speed" />
                        </td>
                        <td class="right">
                            ${wlatest} ${windunit}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="wind-speed-gust" />
                        </td>
                        <td class="right">
                            ${wgust} ${windunit}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="wind-speed-avg" />
                        </td>
                        <td class="right">
                            ${wspeed} ${windunit}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="wind-bearing-range-from" />
                        </td>
                        <td class="right">
                            ${BearingRangeFrom10}º (${BearingRangeFrom}º)
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="beaufort-scale" />
                        </td>
                        <td class="right">
                            ${beaufort}
                        </td>
                    </tr>
                </table>
            </div>
            <div class="span6">
                <table class="table table-hover">
                    <tr>
                        <td>
                            <liferay-ui:message key="wind-direction" />
                        </td>
                        <td class="right">
                            ${currentwdir}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="wind-bearing" />
                        </td>
                        <td class="right">
                            ${bearing}º
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="wind-bearing-avg" />
                        </td>
                        <td class="right">
                            ${avgbearing}º
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="to" />
                        </td>
                        <td class="right">
                            ${BearingRangeTo10}º (${BearingRangeTo}º)
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ${beaudesc}
                        </td>
                        <td class="right">
                            ${wdir}
                        </td>
                    </tr>
                </table>
            </div>
        </div>
</liferay-ui:panel>

<liferay-ui:panel title="pressure-sea-level" state="close">
    <div class="container-fluid">
            <div class="span6">
                <table class="table table-hover">
                    <tr>
                        <td>
                            <liferay-ui:message key="barometer" />
                        </td>
                        <td class="right">
                            ${press} ${pressunit}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="pressure-trend" />
                        </td>
                        <td class="right">
                            ${presstrendval} ${pressunit}
                        </td>
                    </tr>
                </table>
            </div>
            <div class="span6">
                <table class="table table-hover">
                    <tr>
                        <td>
                            <liferay-ui:message key="altimeter-pressure" />
                        </td>
                        <td class="right">
                            ${altimeterpressure} ${pressunit}
                        </td>
                    </tr>
                    <tr>
                        <td class="right" colspan="2">
                            ${presstrend}
                        </td>
                    </tr>
                </table>
            </div>
        </div>
</liferay-ui:panel>

<liferay-ui:panel title="astronomical-information" state="close">
    <div class="container-fluid">
            <div class="span6">
                <table class="table table-hover">
                    <tr>
                        <td>
                            <liferay-ui:message key="sunrise" />
                        </td>
                        <td class="right">
                            ${sunrise}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="dawn" />
                        </td>
                        <td class="right">
                            ${dawn}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="moonrise" />
                        </td>
                        <td class="right">
                            ${moonrise}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="day-lenght" />
                        </td>
                        <td class="right">
                            ${daylength}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="moon-age" />
                        </td>
                        <td class="right">
                            ${MoonAge}
                        </td>
                    </tr>
                </table>
            </div>
            <div class="span6">
                <table class="table table-hover">
                    <tr>
                        <td>
                            <liferay-ui:message key="sunset" />
                        </td>
                        <td class="right">
                            ${sunset}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="dusk" />
                        </td>
                        <td class="right">
                            ${dusk}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="moonset" />
                        </td>
                        <td class="right">
                            ${moonset}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <liferay-ui:message key="lenght-of-daylight" />
                        </td>
                        <td class="right">
                            ${daylightlength}
                        </td>
                    </tr>
                </table>
            </div>
        </div>
</liferay-ui:panel>

<div class="container-fluid">
            <table class="table table-hover">
                <tr>
                    <td>
                        <liferay-ui:message key="latitude" />
                    </td>
                    <td class="right">
                        ${latitude}
                    </td>
                </tr>
                <tr>
                    <td>
                        <liferay-ui:message key="longitude" />
                    </td>
                    <td class="right">
                        ${longitude}
                    </td>
                </tr>
                <tr>
                    <td>
                        <liferay-ui:message key="altitude" />
                    </td>
                    <td class="right">
                        ${altitude}
                    </td>
                </tr>
            </table>
</div>