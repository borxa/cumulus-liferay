<%@ include file="/init.jsp" %>

<liferay-ui:error key="JSONDataNotFound" message="json-data-not-found" />

<table class="table table-hover">
    <tr>
        <td><liferay-ui:message key="temperature" /></td>
        <td class="right">${temp} ${tempunit}</td>
    </tr>
    <tr>
        <td><liferay-ui:message key="int-temperature" /></td>
        <td class="right">${intemp} ${tempunit}</td>
    </tr>
    <tr>
        <td><liferay-ui:message key="humidity" /></td>
        <td class="right">${hum} %</td>
    </tr>
    <tr>
        <td><liferay-ui:message key="int-humidity" /></td>
        <td class="right">${inhum} %</td>
    </tr>
    <tr>
        <td><liferay-ui:message key="wind-speed" /></td>
        <td class="right">${wspeed} ${windunit}</td>
    </tr>
    <tr>
        <td><liferay-ui:message key="current-wind-direction" /></td>
        <td class="right">${currentwdir}</td>
    </tr>
    <tr>
        <td><liferay-ui:message key="rfall-last-hour" /></td>
        <td class="right">${rhour} ${rainunit}</td>
    </tr>
    <tr>
        <td><liferay-ui:message key="last-update" /></td>
        <td class="right">${timehhmmss}</td>
    </tr>
</table>

