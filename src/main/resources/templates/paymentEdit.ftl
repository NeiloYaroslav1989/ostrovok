<#import "part/common.ftl" as common>
<#include "part/paymentPeriod.ftl" >

<@common.page>
    <h1 class="page-title">Редактировать оплату клиента</h1>
    <div class="form-wrapper">
        <form class="form" action="/paymentEdit" method="post">
            <input type="hidden" name="clientId" value="${client.id}">
            <input type="hidden" name="paymentId" value="${payment.id}">
            <div class="form-item">
                <label class="form-item-description" for="paymentPeriode-year">Год:</label>
                <select class="form-select" name="paymentPeriod-year" id="paymentPeriode-year">
                    <#list years as year>
                        <#if year == payment.year>
                            <option selected="selected"  value="${year}">${year}</option>
                        <#else>
                            <option value="${year}">${year}</option>
                        </#if>
                    </#list>
                </select>
            </div>
            <div class="form-item">
                <label class="form-item-description" for="paymentPeriode-month">Месяц:</label>
                <select class="form-select" name="paymentPeriod-month" id="paymentPeriode-month">
                    <#list months as month>
                        <#if month == payment.month>
                            <option selected="selected"  value="${month}">${month}</option>
                        <#else>
                            <option value="${month}">${month}</option>
                        </#if>
                    </#list>
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