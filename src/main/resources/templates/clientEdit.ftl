<#import "part/common.ftl" as common>

<@common.page>
    <h1 class="page-title">Редактирование данных о клиенте</h1>
    <div class="form-wrapper">
        <form class="form" action="/clientEdit" method="post">
            <input type="hidden" name="clientId" value="${client.id}">
            <div class="form-item">
                <label class="form-item-description" for="client-edit-name">Фамилия и имя:</label>
                <input class="form-input" type="text" name="name" id="client-edit-name" value="${client.name}">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="client-group-title">Группа:</label>
                <select class="form-select" name="groupTitle" id="client-group-title">
                    <#list groups as group>
                        <#if currentGroupTitle == group.title>
                            <option selected="selected" value="${group.title}">${group.title}</option>
                        <#else>
                            <option value="${group.title}">${group.title}</option>
                        </#if>
                    </#list>
                </select>
            </div>
            <div class="form-item">
                <label class="form-item-description" for="client-edit-phone">Телефон:</label>
                <input class="form-input" type="text" name="phone" id="client-edit-phone" value="${client.phone}">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="client-edit-birthday">День рождения:</label>
                <input class="form-input" type="text" name="birthday" id="client-edit-birthday" value="${client.birthday}">
            </div>
            <div class="form-item-button">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input class="form-button" type="submit" value="Сохранить">
            </div>
            <div class="form-item-button">
                <a class="form-button-link" href="/clients">Отмена</a>
            </div>
        </form>
    </div>
</@common.page>