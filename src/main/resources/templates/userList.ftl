<#import "part/common.ftl" as common>
<#import "part/form.ftl" as form>

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
                    <td class="table-row"><a class="link" href="/users/edit/${user.id}">Редактировать</a></td>
                    <td class="table-row"><a class="link" href="/users/delete/${user.id}">Удалить</a></td>
                </tr>
            </#list>
        </tbody>
    </table>
    <div class="link-wrapper">
        <a class="link-button" href="/registration">Добавить пользователя</a>
    </div>

</@common.page>