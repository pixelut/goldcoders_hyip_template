{include file="header.tpl" meta_title="Forgot Password - {$settings.site_name}"}

{literal}
<script language=javascript>
function checkform() {
  if (document.forgotform.email.value == '') {
    alert("Please type your username or email!");
    document.forgotform.email.focus();
    return false;
  }
  return true;
}
</script>
{/literal}

    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-12 mx-auto">
                <div class="login_box">
                    <div class="error">
                        {if $errors.turing_image}
                        Invalid turing image
                        {/if}
                    </div>
                    {if $found_records == 2}
                    <div class="error">
                        Your account was found. Please check your e-mail address and follow the confirmation URL to reset your password.
                        <br><br>
                        {else}
                        {if $found_records == 0}
                        No accounts found for provided info.
                        <br><br>
                    </div>
                    {elseif $found_records == 1}
                        <p class="text-warning">Request was confirmed. Login and password was sent to your email address.</p>
                        <br><br>
                    {/if}
                    <form method=post name=forgotform onsubmit="return checkform();">
                        <input type=hidden name=a value="forgot_password">
                        <input type=hidden name=action value="forgot_password">
                        <h4>Forgot Password</h4>
                        <h6><span>-------------</span> Enter Your Email <span>-------------</span> </h6>
                        <div>
                            <label for="email" class="form-label">Email</label>
                            <input type="text" class="form-control" id="email" placeholder="Email or username" name='email' value="{$frm.email|escape:htmlall}">
                        </div>
                        {include file="captcha.tpl" action="forgot_password"}
                        <button class="btn custom_btn1 w-100">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
{/if}

{include file="footer2.tpl"}
