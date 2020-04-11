<#import "part/common.ftl" as common>

<@common.page>
    <h1 class="page-title">Список клиентов</h1>
    <table class="table">
        <thead>
            <tr>
                <th class="table-head">Фамилия Имя</th>
                <th class="table-head">День рождения</th>
                <th class="table-head">Телефон</th>
                <th class="table-head">Группа</th>
                <th class="table-head">Время</th>
                <th class="table-head"></th>
                <th class="table-head"></th>
            </tr>
        </thead>
        <tbody class="table-body">
            <#list clients as client>
                <tr>
                    <td class="table-row">${client.name}</td>
                    <td class="table-row">${client.groupTitle}</td>
                    <td class="table-row">${client.groupTime}</td>
                    <td class="table-row">${client.phone}</td>
                    <td class="table-row">${client.birthday}</td>
                    <td class="table-row"><a class="link" href="/clients/edit/${client.id}">Редактировать</a></td>
                    <td class="table-row"><a class="link" href="/clients/delete/${client.id}">Удалить</a></td>
                </tr>
            </#list>
        </tbody>
    </table>
    <div class="link-wrapper">
        <a class="link-button" href="/clientAdd">Добавить нового клиента</a>
    </div>

</@common.page>