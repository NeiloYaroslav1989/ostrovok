<#import "part/common.ftl" as common>

<@common.page>
    <h1 class="page-title">${client.name}</h1>
    <table class="table">
        <thead>
            <tr>
                <th class="table-head">Год</th>
                <th class="table-head">Месяц</th>
                <th class="table-head">Сумма оплаты</th>
                <th class="table-head"></th>
                <th class="table-head"></th>
            </tr>
        </thead>
        <tbody class="table-body">
            <#list payments as payment>
                <tr>
                    <td class="table-row">${payment.year}</td>
                    <td class="table-row">${payment.month}</td>
                    <td class="table-row">${payment.payment}</td>
                    <td class="table-row"><a class="link-edit" href="/payment/edit/${client.id}/${payment.id}"></a></td>
                    <td class="table-row"><a class="link-delete" href="/payment/delete/${client.id}/${payment.id}"></a></td>
                </tr>
            </#list>
        </tbody>
    </table>
    <div class="link-wrapper">
        <a class="link-button" href="/paymentAdd/${client.id}">Добавить оплату</a>
        <a class="link-button" href="/clients">Назад</a>
    </div>

</@common.page>