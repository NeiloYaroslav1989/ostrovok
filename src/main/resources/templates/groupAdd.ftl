<#import "part/common.ftl" as common>
<#import "part/group.ftl" as groupForm>

<@common.page>
    <h1 class="page-title">Добавить новую группу</h1>
    <#if message??>
        ${message}
    <#else>
    </#if>
    <@groupForm.groupAdd></@groupForm.groupAdd>
</@common.page>