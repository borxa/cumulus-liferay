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
                    ${tempTH} ${tempunit}
                </td>
                <td class="span4 right">
                    ${TtempTH}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="low-temperature" />
                </td>
                <td class="span4 right">
                    ${tempTL} ${tempunit}
                </td>
                <td class="span4 right">
                    ${TtempTL}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="temperature-range" />
                </td>
                <td class="span4 right">
                    ${temprange} ${tempunit}
                </td>
                <td class="span4 right">

                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="high-apparent-temperature" />
                </td>
                <td class="span4 right">
                    ${apptempTH} ${tempunit}
                </td>
                <td class="span4 right">
                    ${TapptempTH}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="low-apparent-temperature" />
                </td>
                <td class="span4 right">
                    ${apptempTL} ${tempunit}
                </td>
                <td class="span4 right">
                    ${TapptempTL}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="high-heat-index" />
                </td>
                <td class="span4 right">
                    ${heatindexTH} ${tempunit}
                </td>
                <td class="span4 right">
                    ${TheatindexTH}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="low-wind-chill" />
                </td>
                <td class="span4 right">
                    ${wchillTL} ${tempunit}
                </td>
                <td class="span4 right">
                    ${TwchillTL}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="maximum-dew-point" />
                </td>
                <td class="span4 right">
                    ${dewpointTH} ${tempunit}
                </td>
                <td class="span4 right">
                    ${TdewpointTH}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="minimum-dew-point" />
                </td>
                <td class="span4 right">
                    ${dewpointTL} ${tempunit}
                </td>
                <td class="span4 right">
                    ${TdewpointTL}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="high-humidity" />
                </td>
                <td class="span4 right">
                    ${humTH} %
                </td>
                <td class="span4 right">
                    ${ThumTH}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="low-humidity" />
                </td>
                <td class="span4 right">
                    ${humTL} %
                </td>
                <td class="span4 right">
                    ${ThumTL}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="heat-degree-days" />
                </td>
                <td class="span4 right">
                    ${heatdegdays} ${tempunit}
                </td>
                <td class="span4 right">

                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="cool-degreee-days" />
                </td>
                <td class="span4 right">
                    ${cooldegdays} ${tempunit}
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
                    <liferay-ui:message key="rainfall-today" />
                </td> 
                <td class="span4 right">
                    ${rfall} ${rainunit}
                </td>
                <td class="span4 right">

                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="rainfall-rate-max" />
                </td>
                <td class="span4 right">
                    ${rrateTM} ${rainunit}/hr
                </td>
                <td class="span4 right">
                    ${TrrateTM}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="high-hourly-rainfall" />
                </td>
                <td class="span4 right">
                    ${hourlyrainTH} ${rainunit}
                </td>
                <td class="span4 right">
                    ${ThourlyrainTH}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="current-wet-spell" />
                </td>
                <td class="span4 right">

                </td>
                <td class="span4 right">
                    ${ConsecutiveRainDays}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="current-dry-spell" />
                </td>
                <td class="span4 right">

                </td>
                <td class="span4 right">
                    ${ConsecutiveDryDays}
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
                    ${wgustTM} ${windunit}
                </td>
                <td class="span4 right">
                    ${TwgustTM}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="highest-speed" />
                </td>
                <td class="span4 right">
                    ${windTM} ${windunit}
                </td>
                <td class="span4 right">
                    ${TwindTM}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="wind-bearing" />
                </td>
                <td class="span4 right">
                    ${bearingTM}º
                </td>
                <td class="span4 right">
                    ${TwgustTM}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="dominat-direction" />
                </td>
                <td class="span4 right">
                    ${domwinddir}
                </td>
                <td class="span4 right">

                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="wind-run" />
                </td>
                <td class="span4 right">
                    ${windrun} ${windrununit}
                </td>
                <td class="span4 right">

                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="beaufort-scale" />
                </td>
                <td class="span4 right">
                    ${Tbeaufort}
                </td>
                <td class="span4 right">
                    ${Tbeaudesc}
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
                    ${pressTH} ${pressunit}
                </td>
                <td class="span4 right">
                    ${TpressTH}
                </td>
            </tr>
            <tr>
                <td class="span6">
                    <liferay-ui:message key="low-pressure" />
                </td>
                <td class="span4 right">
                    ${pressTL} ${pressunit}
                </td>
                <td class="span4 right">
                    ${TpressTL}
                </td>
            </tr>
        </table>
    </div>
</liferay-ui:panel>