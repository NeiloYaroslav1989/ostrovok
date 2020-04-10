<#import "part/common.ftl" as common>
<#import "part/user.ftl" as form>

<@common.page>
    <@form.logout></@form.logout>
    <div>
        <a class="link" href="/users">Список преподавателей</a>
    </div>
    <div>
        <a class="link" href="/groups">Список групп</a>
    </div>
    <div>
        <a class="link" href="/clients">Список клиентов</a>
    </div>


</@common.page>