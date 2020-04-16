<#import "part/common.ftl" as common>

<@common.page>
    <h1 class="page-title">Список новостей</h1>
    <div class="link-wrapper">
        <a class="link-button" href="/news/add">Добавить новость</a>
        <a class="link-button" href="/main">Назад</a>
    </div>
    <div class="news-wrapper">
        <#list newsList as news>
            <article class="article">
                <h3 class="article-title"><a class="article-title-link" href="/news/edit/${news.id}">${news.title}</a></h3>
                <#if news.img??>
                    <img class="article-img" src="/uploads/${news.img}" alt="news-img">
                    <#else>

                </#if>
                <p class="article-description">${news.description}</p>
                <div class="article-footer">
                    <div class="article-author">${news.author}</div>
                    <div class="article-date">${news.date}</div>
                </div>
            </article>
        </#list>
    </div>
</@common.page>