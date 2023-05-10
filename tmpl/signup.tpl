{include file="header.tpl" meta_title="Sign Up - {$settings.site_name}"}


{if $deny_registration}
 We are closed for new registrations now.
{elseif $settings.use_referal_program && $settings.force_upline && !$referer.id && !$settings.get_rand_ref}
 You  do not have a upline. Our system require a upline for each user.
{else}
 {literal}

 <script language=javascript>
 function checkform() {
  if (document.regform.fullname.value == '') {
    alert("Please enter your full name!");
    document.regform.fullname.focus();
    return false;
  }
 {/literal}
 {if $settings.use_user_location == 1}
 {literal}
  if (document.regform.address.value == '') {
    alert("Please enter your address!");
    document.regform.address.focus();
    return false;
  }
  if (document.regform.city.value == '') {
    alert("Please enter your city!");
    document.regform.city.focus();
    return false;
  }
  if (document.regform.state.value == '') {
    alert("Please enter your state!");
    document.regform.state.focus();
    return false;
  }
  if (document.regform.zip.value == '') {
    alert("Please enter your ZIP!");
    document.regform.zip.focus();
    return false;
  }
  if (document.regform.country.options[document.regform.country.selectedIndex].text == '--SELECT--') {
    alert("Please choose your country!");
    document.regform.country.focus();
    return false;
  }
 {/literal}
 {/if}
 {literal}
  if (document.regform.username.value == '') {
    alert("Please enter your username!");
    document.regform.username.focus();
    return false;
  }
  if (!document.regform.username.value.match(/^[A-Za-z0-9_\-]+$/)) {
    alert("For username you should use English letters and digits only!");
    document.regform.username.focus();
    return false;
  }
  if (document.regform.password.value == '') {
    alert("Please enter your password!");
    document.regform.password.focus();
    return false;
  }
  if (document.regform.password.value != document.regform.password2.value) {
    alert("Please check your password!");
    document.regform.password2.focus();
    return false;
  }
 {/literal}
 {if $settings.use_transaction_code}
 {literal}
  if (document.regform.transaction_code.value == '') {
    alert("Please enter your transaction code!");
    document.regform.transaction_code.focus();
    return false;
  }
  if (document.regform.transaction_code.value != document.regform.transaction_code2.value) {
    alert("Please check your transaction code!");
    document.regform.transaction_code2.focus();
    return false;
  }
 {/literal}
 {/if}
 {literal}
  if (document.regform.email.value == '') {
    alert("Please enter your e-mail address!");
    document.regform.email.focus();
    return false;
  }
  if (document.regform.email.value != document.regform.email1.value) {
    alert("Please retype your e-mail!");
    document.regform.email.focus();
    return false;
  }

  for (i in document.regform.elements) {
    f = document.regform.elements[i];
    if (f.name && f.name.match(/^pay_account/)) {
      if (f.value == '') continue;
      var notice = f.getAttribute('data-validate-notice');
      var invalid = 0;
      if (f.getAttribute('data-validate') == 'regexp') {
        var re = new RegExp(f.getAttribute('data-validate-regexp'));
        if (!f.value.match(re)) {
          invalid = 1;
        }
      } else if (f.getAttribute('data-validate') == 'email') {
        var re = /^[^\@]+\@[^\@]+\.\w{2,4}$/;
        if (!f.value.match(re)) {
          invalid = 1;
        }
      }
      if (invalid) {
        alert('Invalid account format. Expected '+notice);
        f.focus();
        return false;
      }
    }
  }

  if (document.regform.agree.checked == false) {
    alert("You have to agree with the Terms and Conditions!");
    return false;
  }

  return true;
 }

 function IsNumeric(sText) {
  var ValidChars = "0123456789";
  var IsNumber=true;
  var Char;
  if (sText == '') return false;
  for (i = 0; i < sText.length && IsNumber == true; i++) { 
    Char = sText.charAt(i); 
    if (ValidChars.indexOf(Char) == -1) {
      IsNumber = false;
    }
  }
  return IsNumber;
 }
 </script>
 {/literal} 

    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-12 mx-auto">
                <div class="login_box">
                    <div>
                        {if $errors}
                        {if $errors.turing_image}<div class="error">Invalid turing image</div>{/if}
                        {if $errors.no_fullname}<div class="error">Please enter your full name</div>{/if}
                        {if $errors.ip_exists_in_database}<div class="error">Your IP already exists in our database. Sorry, but registration impossible</div>{/if}
                        {if $errors.invalid_username}<div class="error">Please enter valid username! It should contains English letters and digits only.</div>{/if}
                        {if $errors.username_too_short}<div class="error">Username should contains {$errors.username_too_short} charaters at least</div>{/if}
                        {if $errors.username_exists}<div class="error">The Username is already taken. Please try another Username.</div>{/if}
                        {if $errors.no_password}<div class="error">Please define a password</div>{/if}
                        {if $errors.password_confirm}<div class="error">Please confirm your password correctly</div>{/if}
                        {if $errors.password_too_small}<div class="error">The password you provided is too small, please enter at least {$errors.password_too_small} characters!</div>{/if} 
                        {if $errors.invalid_email}<div class="error">Please valid email address</div>{/if} 
                        {if $errors.email_confirm}<div class="error">Please confirm your email address correctly</div>{/if}
                        {if $errors.email_exists}<div class="error">An account with this email is already exist</div>{/if}
                        {if $errors.no_address}<div class="error">Please enter your address</div>{/if}
                        {if $errors.no_city}<div class="error">Please enter your city</div>{/if}
                        {if $errors.no_state}<div class="error">Please enter your state</div>{/if}
                        {if $errors.no_zip}<div class="error">Please enter your zip</div>{/if}
                        {if $errors.no_country}<div class="error">Please enter your country</div>{/if}
                        {if $errors.no_transaction_code}<div class="error">Please define a transaction code</div>{/if}
                        {if $errors.transaction_code_confirm}<div class="error">Please correcty confirm your transaction code</div>{/if}
                        {if $errors.transaction_code_too_small}<div class="error">The transaction code you provided is too small, please enter at least {$errors.transaction_code_too_small} characters!</div>{/if} 
                        {if $errors.transaction_code_vs_password}<div class="error">The Transaction Code should not be equal to the Password you have defined</div>{/if}
                        {if $errors.no_agree}<div class="error">You have to agree with the Terms and Conditions!</div>{/if}
                        {if $errors.invalid_account_format}
                        {foreach from=$errors.invalid_account_format item=err}
                        <div class="error">{$err}</div>
                        {/foreach}
                        {/if}
                        {/if}
                    </div>
                    <form method=post onsubmit="return checkform()" name="regform">
                        <input type=hidden name=a value="signup">
                        <input type=hidden name=action value="signup">
                        <h4>Create your Account</h4>
                        <p>See what is going on with your business</p>
                        <h6><span>-------------</span> Sign in with Email <span>-------------</span> </h6>
                        <div>
                            <label for="fname" class="form-label">Full name</label>
                            <input type="text" class="form-control" id="fname" placeholder="Full Name" name=fullname value="{$frm.fullname|escape:html}">
                        </div>
                        <div>
                            <label for="uname" class="form-label">User name</label>
                            <input type="text" class="form-control" id="uname" placeholder="Username" name=username value="{$frm.username|escape:html}">
                        </div>
                        <div>
                            <label for="email" class="form-label">Email</label>
                            <input type="text" class="form-control" id="email" placeholder="Email" name=email value="{$frm.email|escape:html}">
                        </div>
                        <div>
                            <label for="email2" class="form-label">Confirm Email</label>
                            <input type="text" class="form-control" id="email2" placeholder="Email" name=email1 value="{$frm.email1|escape:html}">
                        </div>
                        <div>
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password" placeholder="************" name=password value="{$frm.password|escape:html}">
                        </div>
                        <div>
                            <label for="password2" class="form-label">Confirm Password</label>
                            <input type="password" class="form-control" id="password2" placeholder="************" name=password2 value="{$frm.password2|escape:html}">
                        </div>
                        <div class="form-check form-switch">
                            <label class="form-check-label" for="flexSwitchCheckChecked">I agree to Invest <a
                                    href="?a=rules">privacy
                                    policy</a> & <a href="?a=rules">conditions</a>.
                            </label>
                            <input class="form-check-input" name=agree value=1 type="checkbox" role="switch" id="flexSwitchCheckChecked"
                                checked>
                        </div>
                        {include file="captcha.tpl" action="signup"}
                        <button class="btn custom_btn1 w-100">Create account</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
{/if}
{include file="footer2.tpl"}
