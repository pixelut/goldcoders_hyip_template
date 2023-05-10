{include file="header2.tpl" title="Our Blog" meta_title="Our Blog - {$settings.site_name}"}

{if $frm.id}

{loaddata name="news_item" id=$frm.id var=new}
  <!-- Our blog -->
    <div class="blog full_news">
        <div class="container">
            <h3>{$new.title}</h3>
            <h5>{$new.date}</h5>
            <img src={$new.image_url} class="img-fluid" alt="">
            <p>{$new.full_text}</p>
        </div>
    </div>
    <!-- !Our blog -->

{else}

    <!-- Our blog -->
    <div class="blog">
        <div class="container">
            <div class="row">
                {loaddata name="news" var=news page=$frm.p limit=20 pages_var=pages}
                {foreach from=$news item=n}
                <div class="col-12 col-md-6 col-lg-6 col-xl-4 mb-4">
                    <div class="blog_box card">
                        <img src={$n.image_url} class="img-fluid" alt="">
                        <div class="blog_box_body">
                            <h4>{$n.title}</h4>
                            <p>{$n.full_text}</p>
                        </div>
                        <div class="card-footer bg-transparent border-0 d-flex justify-content-between">
                            <a href="{"?a=news&id=`$n.id`"|encurl}" class="custom_btn2 btn my-auto">Read more</a>
                            <h5 class="my-auto">{$n.date}</h5>
                        </div>
                    </div>
                </div>
                {/foreach}
            </div>
            <div class="d-flex justify-content-center">
                {paginator col=$pages.col cur=$pages.cur url="?a=news&p=%s"|encurl}
            </div>
        </div>
    </div>
    <!-- !Our blog -->

{/if}

    <!-- Started -->
    <div class="started">
        <div class="container">
            <div class="started_box">
                <h2>Ready to get started?</h2>
                <p>Let’s create new something.</p>
                <a href="?a=signup" class="btn custom_btn1">Explore now</a>
            </div>
        </div>
    </div>
    <!-- !Started -->

{include file="footer.tpl"}