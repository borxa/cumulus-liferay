<%@ include file="/init.jsp" %>

<liferay-portlet:actionURL portletConfiguration="true" var="configurationURL" />

<aui:form action="${configurationURL}" method="post" name="fm">
    <aui:input name="<%= Constants.CMD %>" type="hidden" value="<%= Constants.UPDATE %>" />
    <aui:input name="configuration--dataUrl--" type="text" value="${dataUrl}" />
    <aui:select name="configuration--currentWebTags--">
        <c:forEach items="${listWebTags}" var="webTag">
            <aui:option label="${webTag}" value="${webTag}" selected="${webTag == currentWebTags}" />
        </c:forEach>
    </aui:select>
    <aui:input name="configuration--cacheTime--" type="text" value="${cacheTime}" />
    <aui:button-row cssClass="button-row-center">
        <aui:button type="submit" value="save" />
    </aui:button-row>
    
</aui:form>