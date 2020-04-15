Форма для входа
<#macro loginForm>
    <div class="form-wrapper">
        <form class="form" action="/login" method="post">
            <div class="form-item">
                <label class="form-item-description" for="#login-username">Логин:</label>
                <input class="form-input" type="text" name="username" id="login-username" placeholder="Логин">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="#login-password">Пароль:</label>
                <input class="form-input" type="password" name="password" id="login-password" placeholder="Пароль">
            </div>
            <div class="form-item-button">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input class="form-button" type="submit" value="Войти">
            </div>
        </form>
    </div>
</#macro>


Форма для регистрации нового пользователя
<#macro registerForm>
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
</#macro>

Форма для выхода
<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Sign Out"/>
    </form>
</#macro>

Форма для редактирования пользователя
<#macro edit>
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
</#macro>