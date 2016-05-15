<%@ include file="/init.jsp" %>

<liferay-portlet:actionURL portletConfiguration="true" var="configurationURL" />

<aui:form action="${configurationURL}" method="post" name="fm">
    <aui:input name="<%= Constants.CMD %>" type="hidden" value="<%= Constants.UPDATE %>" />
    <aui:input name="preferences--dataUrl--" type="text" value="${dataUrl}" />
    <aui:select name="preferences--currentWebTags--">
        <c:forEach items="${listWebTags}" var="webTag">
            <aui:option label="${webTag}" value="${webTag}" selected="${webTag == currentWebTags}" />
        </c:forEach>
    </aui:select>
    <aui:input name="preferences--cacheTime--" type="text" value="${cacheTime}" />
    <aui:button-row cssClass="button-row-center">
        <aui:button type="submit" value="save" />
    </aui:button-row>
    
</aui:form>