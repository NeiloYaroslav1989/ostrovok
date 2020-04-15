<#import "part/common.ftl" as common>

<@common.page>
    <h1 class="page-title">Редактирование пользователя</h1>
    <div class="form-wrapper">
        <form class="form" action="/users" method="post">
            <input type="hidden" name="userId" value="${user.id}">
            <div class="form-item">
                <label class="form-item-description" for="edit-username">Логин:</label>
                <input class="form-input" type="text" name="username" id="edit-username" value="${user.username}">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="edit-password">Пароль:</label>
                <input class="form-input" type="text" name="password" id="edit-password" value="${user.password}">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="edit-confirmPassword">Подтвердите пароль:</label>
                <input class="form-input" type="text" name="confirmPassword" id="edit-confirmPassword" value="${user.confirmPassword}">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="edit-email">Почта:</label>
                <input class="form-input" type="email" name="email" id="edit-email" value="${user.email}">
            </div>
            <div class="form-item">
                <#list roles as role>
                    <div class="form-checkbox">
                        <label class="form-item-description" for="edit-role-${role}">${role}</label>
                        <input class="form-input" type="checkbox" name="${role}" value="${role}" id="edit-role-${role}"
                                ${user.roles?seq_contains(role)?string("checked", "")}>
                    </div>
                </#list>
            </div>
            <div class="form-item-button">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input class="form-button" type="submit" value="Сохранить">
            </div>
            <div class="form-item-button">
                <a class="form-button-link" href="/users">Отмена</a>
            </div>
        </form>
    </div>
</@common.page>