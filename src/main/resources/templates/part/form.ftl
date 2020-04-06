Форма для входа
<#macro loginForm>
    <form action="/login" method="post">
        <div>
            <label>
                Логин:
                <input type="text" name="username" placeholder="Логин">
            </label>
        </div>
        <div>
            <label>
                Пароль:
                <input type="password" name="password" placeholder="Пароль">
            </label>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Войти">
    </form>
</#macro>


Форма для регистрации нового пользователя
<#macro registerForm>
    <form action="/registration" method="post">
        <div>
            <label>
                Логин:
                <input type="text" name="username" placeholder="Логин">
            </label>
        </div>
        <div>
            <label>
                Пароль:
                <input type="password" name="password" placeholder="Пароль">
            </label>
        </div>
        <div>
            <label>
                Подтвердите пароль:
                <input type="password" name="confirmPassword" placeholder="Повторите пароль">
            </label>
        </div>
        <div>
            <label>
                Почта:
                <input type="email" name="email" placeholder="someadress@some.com">
            </label>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Зарегистрироваться">
    </form>
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