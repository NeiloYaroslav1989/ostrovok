<#import "part/common.ftl" as common>
<#import "part/form.ftl" as form>

<@common.page>
    <p>Регистрация нового пользователя</p>

    <#if message??>
        ${message}
        <#else>
    </#if>
    <@form.registerForm></@form.registerForm>
</@common.page>