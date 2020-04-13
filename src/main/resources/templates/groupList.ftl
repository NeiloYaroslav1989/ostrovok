<#import "part/common.ftl" as common>

<@common.page>
    <h1 class="page-title">Список групп</h1>
    <table class="table">
        <thead>
            <tr>
                <th class="table-head">Группа</th>
                <th class="table-head">Педагог</th>
                <th class="table-head"></th>
                <th class="table-head"></th>
            </tr>
        </thead>
        <tbody class="table-body">
            <#list groups as group>
                <tr>
                    <td class="table-row">${group.title}</td>
                    <td class="table-row">${group.teacher}</td>
                    <td class="table-row"><a class="link-edit" href="/groups/edit/${group.id}"></a></td>
                    <td class="table-row"><a class="link-delete" href="/groups/delete/${group.id}"></a></td>
                </tr>
            </#list>
        </tbody>
    </table>
    <div class="link-wrapper">
        <a class="link-button" href="/addGroup">Добавить группу</a>
        <a class="link-button" href="/main">Назад</a>
    </div>

</@common.page>