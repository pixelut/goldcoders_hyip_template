{include file="header3.tpl" title="Withdrawal of funds" meta_title="Withdrawal of funds - {$settings.site_name}"}

<div class="container withdraw_page">

<div class="text-white">
{if $say eq 'processed'}
{if $batch eq ''}Withdrawal request has been successfully saved.{else} Withdrawal has been processed. Batch id: {$batch}{/if}
{/if}
</div>

<div class="error">
{if $fatals}
  {if $fatal == 'times_limit' || $fatals.times_limit}
  <div class="msg">You can withdraw {$settings.limit_withdraw_period_times} per {$settings.limit_withdraw_period_date} only.</div>
  {/if}

{else}
{if $say eq 'ec_forbidden' || $errors.ec_forbidden}
Sorry, withdraw for this processing is temproary forbidden.<br><br>
{/if}
{if $say eq 'on_hold' || $errors.on_hold}
Sorry, this amount on hold now.<br><br>
{/if}
{if $say eq 'zero' || $errors.zero}
Sorry, you can't request a withdraw smaller than {$currency_sign}0.00 only<br><br>
{/if}
{if $say eq 'less_min' || $errors.less_min}
Sorry, you can request not less than {$currency_sign}{*$settings.min_withdrawal_amount*}{$fees.amount_min}<br><br>
{/if}
{if $say eq 'greater_max' || $errors.greater_max}
Sorry, you can request not greater than {$currency_sign}{*$settings.max_withdrawal_amount*}{$fees.amount_max}<br><br>
{/if}
{if $say eq 'daily_limit' || $errors.daily_limit}
Sorry, you have exceeded a daily limit<br><br>
{/if}
{if $say eq 'not_enought' || $errors.not_enought}
Sorry, you have requested the amount larger than the one on your balance.<br><br>
{/if}
{if $say eq 'invalid_transaction_code' || $errors.invalid_transaction_code}
You have entered the invalid transaction code.<br><br>
{/if}
{if $say eq 'invalid_tfa_code' || $errors.invalid_tfa_code}
You have entered invalid 2FA code.<br><br>
{/if}
{if $say eq 'no_deposits' || $errors.no_deposits}
You have not done any deposits yet. Withdrawal function will be available after a deposit.
<br><br>
{/if}
{if $say eq 'no_active_deposits' || $errors.no_active_deposits}
You must have active deposit to withdraw.
{/if}
{if $say eq 'no_account' || $errors.no_account}
Please, provide your account to withdraw funds to first <a href="{"?a=edit_account"|encurl}">here</a>.
{/if}
{if $errors.demo}
Withdraw is not available for demo account.
{/if}
{if $errors.turing_image}Invalid turing image{/if}
{if $errors.account_suspended}Account is suspended{/if}
</div>
{if $preview}

<form method=post>
<input type=hidden name=a value=withdraw>
<input type=hidden name=action value=withdraw>
<input type=hidden name=amount value={$amount}>
<input type=hidden name=ec value={$ec}>
<input type=hidden name=comment value="{$comment|escape:html}">
<div class="table-responsive mb-4">
<table class="table table-striped table-borderless text-start">
<tr>
 <th>Payment System:</th>
 <td>{$currency}</td>
</tr>
<tr>
 <th>Account:</th>
 <td>{$account}</td>
</tr>
<tr>
 <th>Debit Amount:</th>
 <td>{$amount|fiat:$ec}</td>
</tr>
<tr>
 <th>Withdrawal Fee:</th>
 <td>
{if $fees.fee > 0}
  {$fees.percent}% + {$fees.add_amount|fiat:$ec} (min. {$fees.fee_min|fiat:$ec} max. {if $fees.fee_max}{$fees.fee_max|fiat:$ec}{else}no{/if})
{else}
We have no fee for this operation.
{/if}
</td>
</tr>

{if $converted}
<tr>
 <th>Credit Amount:</th>
 <td>{$converted.amount|fiat:$ec}</td>
</tr>
<tr>
 <th>{$converted.fiat} Amount:</th>
 <td>{$to_withdraw}</td>
</tr>
{else}
<tr>
 <th>Credit Amount:</th>
 <td>{$to_withdraw|fiat:$ec}</td>
</tr>
{/if}

{if $comment}
<tr>
 <th>Note:</th>
 <td>{$comment|escape:html}</td>
</tr>
{/if}
{if $settings.use_transaction_code && $userinfo.transaction_code}
<tr>
 <th>Transaction Code:</th>
 <td><input type="password" name="transaction_code" class=inpts size=15></td>
</tr>
{/if}
{include file="captcha.tpl" action="withdrawal"}
{if $userinfo.tfa_settings.withdraw}
<tr>
 <th>2FA Code:</th>
 <td><input type="text" name="tfa_code" class=inpts size=15> <input type="hidden" name="tfa_time" id="tfa_time"></td>
</tr>
{literal}
<script language=javascript>
document.getElementById('tfa_time').value = (new Date()).getTime();
</script>
{/literal}
{/if}
</table>
</div>
<input type=submit value="Confirm" class=sbmt>

</form>


{else}


<form method=post>
<input type=hidden name=a value=withdraw>
<input type=hidden name=action value=preview>
<input type=hidden name=say value="">
{if $have_available}
<div class="row">
    {assign var="wfch" value=1}
    {foreach from=$ps item=p}
    <div class="col-6 col-md-4 col-lg-2 mb-4">
        {if $p.available > 0}
        <label for="{$p.id}" class="plabel">
            <input type="radio" id="{$p.id}" name="ec" value="{$p.id}" {if $frm.ec == $p.id || $wfch}{assign var="wfch" value=0}checked{/if}>
            <div class="pp_icon_box">
                <div class="d-flex justify-content-center">
                    <img src="./img/pp/{$p.id}.svg" class="img-fluid my-auto" alt="">
                    <p class="my-auto">{$p.name}</p>
                </div>
                <h4>{$p.available|fiat:$p.id}</h4>
                <h6>{if $p.account != ''}{$p.account|escape:html}{else}<a href="{"?a=edit_account"|encurl}"><i>not set</i></a>{/if}</h6>
            </div>
        </label>
        {/if}
    </div>
    {/foreach}
</div>
<div class="submit_sec mt-4">
    <h6 class="s_plan">Withdrawal <small>({$currency_sign})</small></h6>
    <input type="text" class="form-control" name=amount value="{$frm.amount|amount_format|default:"10.00"}" id="">
    <button class="btn acc_btn1">Request</button>
</div>

{else}
<div class="promo_box h-auto">
    <div class="error">No withdraw found</div>
</div>
{/if}
</form>

{/if}

{/if}

</div>
{include file="footer3.tpl"}
