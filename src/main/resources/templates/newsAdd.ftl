<#import "part/common.ftl" as common>

<@common.page>
    <h1 class="page-title">Добавить новость</h1>
    <div class="form-wrapper">
    <form class="form" action="/news/add" method="post" enctype="multipart/form-data">
        <div class="form-item">
            <label class="form-item-description" for="news-title">Тема:</label>
            <textarea class="form-text-title" type="text" name="title" id="news-title" placeholder="Свободные места в группе Подготовка к школе"></textarea>
        </div>
        <div class="form-item">
            <label class="form-item-description" for="news-description">Текст:</label>
            <textarea class="form-text" type="text" name="description" id="news-description" placeholder="Есть свободные места в группе ... "></textarea>
        </div>
        <div class="form-item">
            <label class="form-item-description" for="news-img">Картинка:</label>
            <input class="form-input" type="file" name="img" id="news-img" placeholder="">
        </div>
        <div class="form-item-button">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input class="form-button" type="submit" value="Сохранить">
        </div>
        <div class="form-item-button">
            <a class="form-button-link" href="/news">Отмена</a>
        </div>
    </form>
</@common.page>