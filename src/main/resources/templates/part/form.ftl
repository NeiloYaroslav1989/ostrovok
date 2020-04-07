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
                <label class="form-item-description" for="#reg-username">Логин:</label>
                <input class="form-input" type="text" name="username" id="reg-username" placeholder="Логин">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="#reg-password">Пароль:</label>
                <input class="form-input" type="password" name="password" id="reg-password" placeholder="Пароль">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="#reg-confirmPassword">Подтвердите пароль:</label>
                <input class="form-input" type="password" name="confirmPassword" id="reg-confirmPassword" placeholder="Повторите пароль">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="#reg-email">Почта:</label>
                <input class="form-input" type="email" name="email" id="reg-email" placeholder="someadress@some.com">
            </div>
            <div class="form-item-button">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input class="form-button" type="submit" value="Зарегистрироваться">
            </div>
            <div class="form-item-button">
                <a class="link-button" href="/user">Отмена</a>
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
    <form action="/user" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="hidden" name="userId" value="${user.id}">
        <table>
            <thead>
                <tr>
                    <th>Имя пользователя</th>
                    <th>Роль</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="text" name="username" value="${user.username}"></td>
                    <td>
                        <#list roles as role>
                            <label>
                                ${role}
                                <input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>
                            </label>
                        </#list>
                    </td>
                    <td><button type="submit">Сохранить</button></td>
                </tr>
            </tbody>
        </table>
    </form>
</#macro>