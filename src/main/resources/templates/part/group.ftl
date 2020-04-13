Добавление новой группы
<#macro groupAdd>
    <div class="form-wrapper">
        <form class="form" action="/groups" method="post">
            <div class="form-item">
                <label class="form-item-description" for="group-title">Группа:</label>
                <input class="form-input" type="text" name="title" id="group-title" placeholder="Подготовка к школе">
            </div>
<#--            <div class="form-item">-->
<#--                <label class="form-item-description" for="group-time">Время:</label>-->
<#--                <input class="form-input" type="text" name="time" id="group-time" placeholder="Пн-Пт 16.00">-->
<#--            </div>-->
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
    </div>
</#macro>

Редактирование группы
<#macro groupEdit>
    <div class="form-wrapper">
        <form class="form" action="/groups/edit" method="post">
            <input type="hidden" name="groupId" value="${group.id}">
            <div class="form-item">
                <label class="form-item-description" for="group-edit-title">Название группы:</label>
                <input class="form-input" type="text" name="title" id="group-edit-title" value="${group.title}" >
            </div>
<#--            <div class="form-item">-->
<#--                <label class="form-item-description" for="group-edit-time">Время:</label>-->
<#--                <input class="form-input" type="text" name="time" id="group-edit-time" value="${group.time}">-->
<#--            </div>-->
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
</#macro>

