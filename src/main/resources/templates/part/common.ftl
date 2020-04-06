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
<#--        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">-->
    </head>
    <body>
        <header class="header">
            <a href="#" class="logo"></a>
            <nav class="nav">
                <a class="nav-item" href="#">Главная</a>
                <a class="nav-item" href="#">О нас</a>
                <a class="nav-item" href="#">Отзывы</a>
                <a class="nav-item" href="#">Игры</a>
            </nav>
            <a href="/login">Войти</a>
        </header>
        <main class="main">
            <#nested>
        </main>
        <footer class="footer">
            <p>Footer</p>
        </footer>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
<#--        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>-->
<#--        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>-->
<#--        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>-->
    </body>
    </html>
</#macro>