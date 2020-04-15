<#import "part/common.ftl" as common>

<@common.page>
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
    <a href="/index">Назад</a>
</@common.page>