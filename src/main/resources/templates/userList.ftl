<#import "part/common.ftl" as common>
<#import "part/logout.ftl" as form>

<@common.page>
    <h1 class="page-title">Список преподавателей</h1>
    <table class="table">
        <thead>
            <tr>
                <th class="table-head">Имя</th>
                <th class="table-head">Роль</th>
                <th class="table-head"></th>
                <th class="table-head"></th>
            </tr>
        </thead>
        <tbody class="table-body">
            <#list users as user>
                <tr>
                    <td class="table-row">${user.username}</td>
                    <td class="table-row"><#list user.roles as role>${role}<#sep>, </#list></td>
                    <td class="table-row"><a class="link-edit" href="/users/edit/${user.id}"></a></td>
                    <td class="table-row"><a class="link-delete" href="/users/delete/${user.id}"></a></td>
                </tr>
            </#list>
        </tbody>
    </table>
    <div class="link-wrapper">
        <a class="link-button" href="/registration">Добавить пользователя</a>
        <a class="link-button" href="/main">Назад</a>
    </div>

</@common.page>