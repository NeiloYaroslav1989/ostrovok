<#macro page>
    <!DOCTYPE html>
    <html lang="ru">
    <head>
        <meta charset="UTF-8">
        <title>Островок</title>
        <#--        Говорим браузеру, чтобы он считывал плотность пикселей и если надо изменял размер шрифта.-->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

                <link rel="stylesheet" type="text/css" href="/static/css/reset.css" />
                <link rel="stylesheet" type="text/css" href="/static/css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="/static/css/style.css" />
    </head>
    <body>
        <div class="wrapper">
            <header class="header">
                <a href="/index" class="logo"><img class="logo-img" src="/static/img/logo.png" alt="Логотип Островочек детский клуб"></a>
                <#include "menu.ftl">
                <a class="login-link" href="/main">Войти</a>
            </header>
            <main class="main">
                <#nested>
            </main>
            <footer class="footer">
                <#include "menu.ftl">
            </footer>
        </div>
    </body>
    </html>
</#macro>