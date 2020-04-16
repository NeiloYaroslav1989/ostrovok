<#import "part/common.ftl" as common>
<#import "part/logout.ftl" as form>

<@common.page>
    <@form.logout></@form.logout>
    <div class="link-wrapper">
        <a class="link" href="/users">Список пользователей</a>
    </div>
    <div class="link-wrapper">
        <a class="link" href="/groups">Список групп</a>
    </div>
    <div class="link-wrapper">
        <a class="link" href="/clients">Список клиентов</a>
    </div>
    <div class="link-wrapper">
        <a class="link" href="/news">Список новостей</a>
    </div>

</@common.page>