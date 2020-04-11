Добавление нового клиента
<#macro clientAdd>
    <div class="form-wrapper">
        <form class="form" action="/clientAdd" method="post">
            <div class="form-item">
                <label class="form-item-description" for="client-name">Фамилия и имя:</label>
                <input class="form-input" type="text" name="name" id="client-name" placeholder="Иванов Иван">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="client-groupTitle">Группа:</label>
                <input class="form-input" type="text" name="groupTitle" id="client-groupTitle" placeholder="Подготовка к школе">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="client-groupTime">Время:</label>
                <input class="form-input" type="text" name="groupTime" id="client-groupTime" placeholder="Пн-Пт 16.00">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="client-phone">Телефон:</label>
                <input class="form-input" type="text" name="phone" id="client-phone" placeholder="+380991234567">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="client-birthday">День рождения:</label>
                <input class="form-input" type="text" name="birthday" id="client-birthday" placeholder="20.05.2013">
            </div>
            <div class="form-item-button">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input class="form-button" type="submit" value="Сохранить">
            </div>
            <div class="form-item-button">
                <a class="form-button-link" href="/clients">Отмена</a>
            </div>
        </form>
    </div>
</#macro>

Редактирование данных о клиенте
<#macro clientEdit>
    <div class="form-wrapper">
        <form class="form" action="/clientEdit" method="post">
            <input type="hidden" name="clientId" value="${client.id}">
            <div class="form-item">
                <label class="form-item-description" for="client-edit-name">Фамилия и имя:</label>
                <input class="form-input" type="text" name="name" id="client-edit-name" value="${client.name}">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="client-edit-group">Группа:</label>
                <input class="form-input" type="text" name="groupTitle" id="client-edit-group" value="${client.groupTitle}">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="client-edit-time">Время:</label>
                <input class="form-input" type="text" name="groupTime" id="client-edit-time" value="${client.groupTime}">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="client-edit-phone">Телефон:</label>
                <input class="form-input" type="text" name="phone" id="client-edit-phone" value="${client.phone}">
            </div>
            <div class="form-item">
                <label class="form-item-description" for="client-edit-birthday">День рождения:</label>
                <input class="form-input" type="text" name="birthday" id="client-edit-birthday" value="${client.birthday}">
            </div>
            <div class="form-item-button">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input class="form-button" type="submit" value="Сохранить">
            </div>
            <div class="form-item-button">
                <a class="form-button-link" href="/clients">Отмена</a>
            </div>
        </form>
    </div>
</#macro>

