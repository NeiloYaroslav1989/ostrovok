<#import "part/common.ftl" as common>

<@common.page>
    <h1 class="page-title">Редактировать оплату клиента</h1>
    <div class="form-wrapper">
        <form class="form" action="/paymentEdit" method="post">
            <input type="hidden" name="clientId" value="${client.id}">
            <input type="hidden" name="paymentId" value="${payment.id}">
            <div class="form-item">
                <label class="form-item-description" for="paymentPeriode-year">Год:</label>
                <select class="form-select" name="paymentPeriod-year" id="paymentPeriode-year">
                    <option  value="2020">2020</option>
                    <option  value="2021">2021</option>
                    <option  value="2022">2022</option>
                    <option  value="2023">2023</option>
                    <option  value="2024">2024</option>
                    <option  value="2025">2025</option>
                    <option  value="2026">2026</option>
                    <option  value="2027">2027</option>
                    <option  value="2028">2028</option>
                    <option  value="2029">2029</option>
                    <option  value="2030">2030</option>
                </select>
            </div>
            <div class="form-item">
                <label class="form-item-description" for="paymentPeriode-month">Месяц:</label>
                <select class="form-select" name="paymentPeriod-month" id="paymentPeriode-month">
                    <option  value="Январь">Январь</option>
                    <option  value="Февраль">Февраль</option>
                    <option  value="Март">Март</option>
                    <option  value="Апрель">Апрель</option>
                    <option  value="Май">Май</option>
                    <option  value="Июнь">Июнь</option>
                    <option  value="Июль">Июль</option>
                    <option  value="Август">Август</option>
                    <option  value="Сентябрь">Сентябрь</option>
                    <option  value="Окрябрь">Окрябрь</option>
                    <option  value="Ноябрь">Ноябрь</option>
                    <option  value="Декабрь">Декабрь</option>
                </select>
            </div>
            <div class="form-item">
                <label class="form-item-description" for="payment">Сумма оплаты:</label>
                <input class="form-input" type="text" name="payment" id="payment" value="${payment.payment}">
            </div>
            <div class="form-item-button">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input class="form-button" type="submit" value="Сохранить">
            </div>
            <div class="form-item-button">
                <a class="form-button-link" href="/clients/paymentlist/${client.id}">Отмена</a>
            </div>
        </form>
    </div>
</@common.page>