<#import "part/common.ftl" as common>
<#import "part/user.ftl" as form>

<@common.page>
    <h1 class="page-title">Регистрация нового пользователя</h1>
    <#if message??>
        ${message}
    <#else>
    </#if>
    <@form.registerForm></@form.registerForm>

</@common.page>