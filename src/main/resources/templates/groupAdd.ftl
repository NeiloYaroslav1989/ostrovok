<#import "part/common.ftl" as common>

<@common.page>
    <h1 class="page-title">Добавить новую группу</h1>
    <#if message??>
        ${message}
    <#else>
    </#if>
    <div class="form-wrapper">
    <form class="form" action="/groups" method="post">
        <div class="form-item">
            <label class="form-item-description" for="group-title">Группа:</label>
            <input class="form-input" type="text" name="title" id="group-title" placeholder="Подготовка к школе">
        </div>
        <div class="form-item">
            <label class="form-item-description" for="group-teacher">Педагог:</label>
            <input class="form-input" type="text" name="teacher" id="group-teacher" placeholder="Князэва Вита">
        </div>
        <div class="form-item-button">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input class="form-button" type="submit" value="Сохранить">
        </div>
        <div class="form-item-button">
            <a class="form-button-link" href="/groups">Отмена</a>
        </div>
    </form>
</@common.page>