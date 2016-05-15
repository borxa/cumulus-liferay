<%@ include file="/init.jsp" %>

<liferay-ui:error key="JSONDataNotFound" message="json-data-not-found" />

<liferay-ui:panel title="temperature-and-humidity" state="close">
    <div class="container-fluid">
        <table class="table table-hover">
            <tr>
                <td class="span6">
                    <liferay-ui:message key="high-temperature" />
                </td>
                <td class="span4 right">
                    ${tempYH} ${tempunit}
                </td>
                <td class="span4 right">
                    ${TtempYH}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="low-temperature" />
                </td>
                <td class="span4 right">
                    ${tempYL} ${tempunit}
                </td>
                <td class="span4 right">
                    ${TtempYL}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="temperature-range" />
                </td>
                <td class="span4 right">
                    ${temprangeY} ${tempunit}
                </td>
                <td class="span4 right">
                    
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="high-apparent-temperature" />
                </td>
                <td class="span4 right">
                    ${apptempYH} ${tempunit}
                </td>
                <td class="span4 right">
                    ${TapptempYH}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="low-apparent-temperature" />
                </td>
                <td class="span4 right">
                    ${apptempYL} ${tempunit}
                </td>
                <td class="span4 right">
                    ${TapptempYL}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="high-heat-index" />
                </td>
                <td class="span4 right">
                    ${heatindexYH} ${tempunit}
                </td>
                <td class="span4 right">
                    ${TheatindexYH}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="low-wind-chill" />
                </td>
                <td class="span4 right">
                    ${wchillYL} ${tempunit}
                </td>
                <td class="span4 right">
                    ${TwchillYL}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="maximum-dew-point" />
                </td>
                <td class="span4 right">
                    ${dewpointYH} ${tempunit}
                </td>
                <td class="span4 right">
                    ${TdewpointYH}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="minimum-dew-point" />
                </td>
                <td class="span4 right">
                    ${dewpointYL} ${tempunit}
                </td>
                <td class="span4 right">
                    ${TdewpointYL}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="high-humidity" />
                </td>
                <td class="span4 right">
                    ${humYH} %
                </td>
                <td class="span4 right">
                    ${ThumYH}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="low-humidity" />
                </td>
                <td class="span4 right">
                    ${humYL} %
                </td>
                <td class="span4 right">
                    ${ThumYL}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="heat-degree-days" />
                </td>
                <td class="span4 right">
                    ${heatdegdaysY} ${tempunit}
                </td>
                <td class="span4 right">
                    
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="cool-degreee-days" />
                </td>
                <td class="span4 right">
                    ${cooldegdaysY} ${tempunit}
                </td>
                <td class="span4 right">
                    
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="average-temperature" />
                </td>
                <td class="span4 right">
                    ${avgtempY} ${tempunit}
                </td>
                <td class="span4 right">
                    
                </td>
            </tr>
        </table>
    </div>
</liferay-ui:panel>

<liferay-ui:panel title="rainfall" state="close">
    <div class="container-fluid">
        <table class="table table-hover">
            <tr>
                <td class="span6">
                    <liferay-ui:message key="rainfall-yesterday" />
                </td>
                <td class="span4 right">
                    ${rfallY} ${rainunit}
                </td>
                <td class="span4 right">
                    
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="rainfall-rate-max" />
                </td>
                <td class="span4 right">
                    ${rrateYM} ${rainunit}/hr
                </td>
                <td class="span4 right">
                    ${TrrateYM}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="high-hourly-rainfall" />
                </td>
                <td class="span4 right">
                    ${hourlyrainYH} ${rainunit}
                </td>
                <td class="span4 right">
                    ${ThourlyrainYH}
                </td>
            </tr>
        </table>
    </div>
</liferay-ui:panel>

<liferay-ui:panel title="wind" state="close">
    <div class="container-fluid">
        <table class="table table-hover">
            <tr>
                <td class="span6">
                    <liferay-ui:message key="highest-gust" />
                </td>
                <td class="span4 right">
                    ${wgustYM} ${windunit}
                </td>
                <td class="span4 right">
                    ${TwgustYM}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="highest-speed" />
                </td>
                <td class="span4 right">
                    ${windYM} ${windunit}
                </td>
                <td class="span4 right">
                    ${TwindYM}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="wind-bearing" />
                </td>
                <td class="span4 right">
                    ${bearingYM}º
                </td>
                <td class="span4 right">
                    ${TwgustYM}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="dominat-direction" />
                </td>
                <td class="span4 right">
                    ${domwinddirY}
                </td>
                <td class="span4 right">
                    
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="wind-run" />
                </td>
                <td class="span4 right">
                    ${windrunY} ${windrununit}
                </td>
                <td class="span4 right">
                    
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="beaufort-scale" />
                </td>
                <td class="span4 right">
                    ${Ybeaufort}
                </td>
                <td class="span4 right">
                    ${Ybeaudesc}
                </td>
            </tr>
        </table>
    </div>
</liferay-ui:panel>

<liferay-ui:panel title="pressure-sea-level" state="close">
    <div class="container-fluid">
        <table class="table table-hover">
            <tr>
                <td class="span6">
                    <liferay-ui:message key="high-pressure" />
                </td>
                <td class="span4 right">
                    ${pressYH} ${pressunit}
                </td>
                <td class="span4 right">
                    ${TpressYH}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="low-pressure" />
                </td>
                <td class="span4 right">
                    ${pressYL} ${pressunit}
                </td>
                <td class="span4 right">
                    ${TpressYL}
                </td>
            </tr>
        </table>
    </div>
</liferay-ui:panel>
