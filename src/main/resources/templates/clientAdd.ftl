<#import "part/common.ftl" as common>
<#import "part/client.ftl" as clientForm>

<@common.page>
    <h1 class="page-title">Добавить нового клиента</h1>
    <div class="message">
        <#if message??>
            ${message}
        <#else>
        </#if>
    </div>

    <@clientForm.clientAdd></@clientForm.clientAdd>
</@common.page>