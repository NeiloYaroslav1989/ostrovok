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
                <input type="text" name="password" placeholder="Пароль">
            </label>
        </div>
        <input type="hidden" name="_csrf" value="_csrf.token">
        <button type="submit">Войти</button>
    </form>
</#macro>

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
                <input type="text" name="password" placeholder="Пароль">
            </label>
        </div>
        <div>
            <label>
                Подтвердите пароль:
                <input type="text" name="confirmPassword" placeholder="Повторите пароль">
            </label>
        </div>
        <div>
            <label>
                Почта:
                <input type="email" name="email" placeholder="someadress@some.com">
            </label>
        </div>
        <input type="hidden" name="_csrf" value="_csrf.token">
        <button type="submit">Зарегистрироваться</button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="_csrf.token">
        <input type="submit" value="Sign Out"/>
    </form>
</#macro>