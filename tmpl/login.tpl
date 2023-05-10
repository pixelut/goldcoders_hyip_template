{include file="header.tpl" meta_title="Log In - {$settings.site_name}"}

{literal}
<script language=javascript>
function checkform() {
  if (document.mainform.username.value=='') {
    alert("Please type your username!");
    document.mainform.username.focus();
    return false;
  }
  if (document.mainform.password.value=='') {
    alert("Please type your password!");
    document.mainform.password.focus();
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
                    {if $frm.say eq 'invalid_login'}
                    <h4>Login error:</h4>
                    <div class="error">Your login or password or turing image code is wrong. Please check this information.</div>
                    {if $bf_tries.status}
                    {if $bf_tries.left == 0}
                    <div class="error">You have already maximum times entered incorrectly login info. Your account is blocked. Check your email to active.</div>
                    {else}
                    <div class="error">You have <b>{$bf_tries.left}</b> tries to entered correctly login information befor blocking.</div>
                    {/if}
                    {/if}

                    {/if}
                    <form method=post name=mainform onsubmit="return checkform()">
                        <input type=hidden name=a value='do_login'>
                        <input type=hidden name=follow value='{$frm.follow}'>
                        <input type=hidden name=follow_id value='{$frm.follow_id}'>
                        <h4>Login to your Account</h4>
                        <p>See what is going on with your business</p>
                        <h6><span>-------------</span> Sign in with Email <span>-------------</span> </h6>
                        <div>
                            <label for="email" class="form-label">Email</label>
                            <input type="text" class="form-control" id="email" placeholder="Email or username" name=username value='{$frm.username|escape:"html"}'>
                        </div>
                        <div>
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password" placeholder="************" name=password value=''>
                        </div>
                        {include file="captcha.tpl" action="login"}
                        <a href="{"?a=forgot_password"|encurl}">Forgot Password</a>.
                        <button class="btn custom_btn1 w-100">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
{include file="footer2.tpl"}
