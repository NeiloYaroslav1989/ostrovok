<#import "part/common.ftl" as common>
<@common.page>
    <h1 class="page-title">Редактирование группы</h1>
    <div class="form-wrapper">
        <form class="form" action="/groups/edit" method="post">
            <input type="hidden" name="groupId" value="${group.id}">
            <div class="form-item">
                <label class="form-item-description" for="group-edit-title">Название группы:</label>
                <input class="form-input" type="text" name="title" id="group-edit-title" value="${group.title}" >
            </div>
            <div class="form-item">
                <label class="form-item-description" for="group-edit-teacher">Педагог:</label>
                <input class="form-input" type="text" name="teacher" id="group-edit-teacher" value="${group.teacher}">
            </div>
            <div class="form-item-button">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input class="form-button" type="submit" value="Сохранить">
            </div>
            <div class="form-item-button">
                <a class="form-button-link" href="/groups">Отмена</a>
            </div>
        </form>
    </div>
</@common.page>