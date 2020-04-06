<#import "part/common.ftl" as common>

<@common.page>
    <h3>Список преподавателей</h3>
    <table>
        <thead>
            <tr>
                <th>Имя</th>
                <th>Роль</th>
                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <#list users as user>
                <tr>
                    <td>${user.username}</td>
                    <td><#list user.roles as role>${role}<#sep>, </#list></td>
                    <td><a href="/user/${user.id}">Редактировать</a></td>
                    <td><a href="/user/${user.id}">Удалить</a></td>
                </tr>
            </#list>
        </tbody>
    </table>
</@common.page>