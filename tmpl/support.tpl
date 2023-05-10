{include file="header2.tpl" title="Contact Us" meta_title="Contact Us - {$settings.site_name}"}

{if $say eq 'send'}
<p class="text-center">Message has been successfully sent. We will back to you in next 24 hours. Thank you.</p>
{else}

<script language=javascript>
{if $userinfo.logged == 1}
{literal}
function checkform() { 
  if (document.mainform.message.value == '') {
    alert("Please type your message!");
    document.mainform.message.focus();
    return false;
  }
  return true;
}
{/literal}
{else}
{literal}
function checkform() {
  if (document.mainform.name.value == '') {
    alert("Please type your full name!");
    document.mainform.name.focus();
    return false;
  }
  if (document.mainform.email.value == '') {
    alert("Please enter your e-mail address!");
    document.mainform.email.focus();
    return false;
  }
  if (document.mainform.message.value == '') {
    alert("Please type your message!");
    document.mainform.message.focus();
    return false;
  }
  return true;
}
{/literal}
{/if}
</script>


    <div class="container">
        <div class="contact_box">
            <div class="row">
                <div class="col-12 col-lg-5 my-lg-auto mb-4">
                    <h3>Get in touch</h3>
                    <p>We will be happy to answer any questions or feedback you may have.</p>
                    <div class="address_section d-flex">
                        <img src="./img/bubble-chat (1).svg" class="img-fluid mb-auto" alt="">
                        <div>
                            <h5>Chat to us</h5>
                            <p>Our friendly team is here to help</p>
                            <p>crypto@invest.com</p>
                        </div>
                    </div>
                    <div class="address_section d-flex">
                        <img src="./img/location (2).svg" class="img-fluid mb-auto" alt="">
                        <div>
                            <h5>Visit us</h5>
                            <p>Come to say hello at our office HQ</p>
                            <p>4A New road, Newyork</p>
                        </div>
                    </div>
                    <div class="address_section d-flex">
                        <img src="./img/telephone.svg" class="img-fluid mb-auto" alt="">
                        <div>
                            <h5>Call us</h5>
                            <p>Every day 10am - 6pm</p>
                            <p>+756 854 478</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-7 my-auto">
                    <div class="form_box">
                        <p>Tell us your quarry or anything you want.</p>
                        <form method=post name=mainform onsubmit="return checkform()">
                            <input type=hidden name=a value=support>
                            <input type=hidden name=action value=send>
                            {if $errors}
                            <ul style="color:red">
                            {if $errors.turing_image == 1}
                                <li>Invalid turing image</li>
                            {/if}
                            {if $errors.invalid_email == 1}
                                <li>Invalid email address</li>
                            {/if}
                            </ul>
                            {/if}
                            {if $userinfo.logged}
                            <input type="text" class="form-control" value="{$userinfo.name}" readonly>
                            <input type="email" class="form-control" value="{$userinfo.email}" readonly>
                            {else}
                            <input type="text" class="form-control" placeholder="Your name" name="name" value="{$frm.name|escape:htmlall}">
                            <input type="email" class="form-control" placeholder="Email" name="email" value="{$frm.email|escape:htmlall}">
                            {/if}
                            <textarea class="form-control" placeholder="write text....">{$frm.message|escape:htmlall}</textarea>
                            {include file="captcha.tpl" action="support"}
                            <button class="custom_btn1 btn">Send message</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
