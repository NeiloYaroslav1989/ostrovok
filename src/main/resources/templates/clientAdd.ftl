<#import "part/common.ftl" as common>
<#import "part/client.ftl" as clientForm>

<@common.page>
    <h1 class="page-title">Добавить нового клиента</h1>
<#--    <#if message??>-->
<#--        ${message}-->
<#--    <#else>-->
<#--    </#if>-->
    <@clientForm.clientAdd></@clientForm.clientAdd>
</@common.page>