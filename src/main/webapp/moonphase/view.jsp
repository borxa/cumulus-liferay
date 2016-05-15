<%@ include file="/init.jsp" %>

<liferay-ui:error key="JSONDataNotFound" message="json-data-not-found" />

<h4>${moonphase}</h4>

<div class="text-center" style="background-color: black; max-width: 400px;">
    <img src="${renderRequest.contextPath}/moonphase/moon/${MoonAge}.png" 
         alt="moon" />
</div>

<liferay-ui:message key="visible-percent" />: ${MoonPercentAbs}%
(<liferay-ui:message key="age" /> ${MoonAge} <liferay-ui:message key="days" />)