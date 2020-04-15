<#import "part/common.ftl" as common>

<@common.page>
    <h1 class="page-title">Регистрация нового пользователя</h1>
    <#if message??>
        ${message}
    <#else>
    </#if>
    <div class="form-wrapper">
        <form class="form" action="/registration" method="post">
            <div class="form-item">
                <label class="form-item-description" for="reg-username">Логин:</label>
                <input class="form-input" type="text" name="username" id="reg-username" placeholder="Логин">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="reg-password">Пароль:</label>
                <input class="form-input" type="text" name="password" id="reg-password" placeholder="Пароль">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="reg-confirmPassword">Подтвердите пароль:</label>
                <input class="form-input" type="text" name="confirmPassword" id="reg-confirmPassword" placeholder="Повторите пароль">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="reg-email">Почта:</label>
                <input class="form-input" type="email" name="email" id="reg-email" placeholder="someadress@some.com">
            </div>
            <div class="form-item">
                <div class="form-checkbox">
                    <label class="form-item-description" for="reg-role-user">User</label>
                    <input class="form-input" type="checkbox" name="USER" value="USER" id="reg-role-user">
                </div>
                <div class="form-checkbox">
                    <label class="form-item-description" for="reg-role-teacher">Teacher</label>
                    <input class="form-input" type="checkbox" name="TEACHER" value="TEACHER" id="reg-role-teacher">
                </div>
                <div class="form-checkbox">
                    <label class="form-item-description" for="reg-role-admin">Admin</label>
                    <input class="form-input" type="checkbox" name="ADMIN" value="ADMIN" id="reg-role-admin">
                </div>
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