<#import "part/common.ftl" as common>

<@common.page>
    <h1 class="page-title">Последние новости и события<br>в детском клубе "Островок"</h1>
    <div class="news-wrapper">
        <#list newsList as news>
            <article class="article">
                <h3 class="article-title">${news.title}</h3>
                <#if news.img??>
                    <img class="article-img" src="/uploads/${news.img}" alt="news-img">
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