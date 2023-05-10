{include file="header3.tpl" title="New Deposit" meta_title="New Deposit - {$settings.site_name}"}

{if $fatal}

{if $fatal == 'one_per_month'}
You can deposit once a month only.
{/if}

{else}

{literal}
<script language="javascript"><!--
function openCalculator(id)
{

  w = 225; h = 400;
  t = (screen.height-h-30)/2;
  l = (screen.width-w-30)/2;
  window.open('?a=calendar&type=' + id, 'calculator' + id, "top="+t+",left="+l+",width="+w+",height="+h+",resizable=1,scrollbars=0");

{/literal}
  {if $qplans > 1}
{literal}
  for (i = 0; i < document.spendform.h_id.length; i++)
  {
    if (document.spendform.h_id[i].value == id)
    {
      document.spendform.h_id[i].checked = true;
    }
  }
{/literal}
  {/if}
{literal}

}

function updateCompound() {
  var id = 0;
  var tt = document.spendform.h_id.type;
  if (tt && tt.toLowerCase() == 'hidden') {
    id = document.spendform.h_id.value;
  } else {
    for (i = 0; i < document.spendform.h_id.length; i++) {
      if (document.spendform.h_id[i].checked) {
        id = document.spendform.h_id[i].value;
      }
    }
  }

  var cpObj = document.getElementById('compound_percents');
  if (cpObj) {
    while (cpObj.options.length != 0) {
      cpObj.options[0] = null;
    }
  }

  if (cps[id] && cps[id].length > 0) {
    document.getElementById('coumpond_block').style.display = '';

    for (i in cps[id]) {
      cpObj.options[cpObj.options.length] = new Option(cps[id][i]);
    }
  } else {
    document.getElementById('coumpond_block').style.display = 'none';
  }
}
var cps = {};
--></script>
{/literal}

    <div class="deposit_page">
        <div class="container">
		{if $frm.say eq 'deposit_success'}
		<h3 class="text-white">The deposit has been successfully saved.</h3>
		<br><br>
		{/if}

		{if $frm.say eq 'deposit_saved'}
		<h3 class="text-white">The deposit has been saved. It will become active when the administrator checks statistics.</h3><br><br>
		{/if}

		<div class="error">
		{if $errors}
		{if $errors.less_min}
		Sorry, you can deposit not less than {$currency_sign}{$errors.less_min} with selected processing<br><br>
		{/if}
		{if $errors.greater_max}
		Sorry, you can deposit not greater than {$currency_sign}{$errors.greater_max} with selected processing<br><br>
		{/if}
		{if $errors.not_enough_funds}
		You have no enough funds to complete the operation.<br><br>
		{/if}
		{if $errors.ec_forbidden}
		Sorry, deposit with selected processing is temproary forbidden.<br><br>
		{/if}
		{if $errors.cannot_invest_this_plan_anymore}
		Sorry, you cannot invest this plan anymore<br><br>
		{/if}
		{if $errors.external_deposits_disabled}
		Deposit to this plan from external processing is forbidden.
		{/if}
		{if $errors.internal_deposits_disabled}
		Deposit to this plan from balance is forbidden.
		{/if}
		{if $errors.no_ps}
		Please, select funds source.
		{/if}
		{if $errors.deposits_amount_exeeded}
		Your total deposit in &quot;{$errors.deposits_amount_exeeded.plan|escape:html}&quot; should not more than {$errors.deposits_amount_exeeded.amount_limit|fiat}<br><br>
		{/if}
		{/if}
		</div>
            <h6 class="s_plan">Select Plan</h6>
			<form method=post name="spendform">
				<input type=hidden name=a value=deposit>
				<div class="investment_plan">
					<div class="row text-center">
						<div class="col-12 col-lg-6 col-xl-4 col-md-6 mb-4">
							<label for="plan1" class="plabel">
								<input type="radio" name="h_id" value="1" id="plan1">
								<div class="plan_box">
									<h2>0.75 <small>%</small></h2>
									<p>Daily for 40 days</p>
									<div class="plan_subbox text-start">
										<div class="row">
											<div class="col-6 mb-4">
												<p>Total Return</p>
												<h6>130%</h6>
											</div>
											<div class="col-6 mb-4">
												<p>Net Return</p>
												<h6>30%</h6>
											</div>
											<div class="col-6">
												<p>Minimum</p>
												<h6>50 USD</h6>
											</div>
											<div class="col-6">
												<p>Maximum</p>
												<h6>499USD</h6>
											</div>
										</div>
									</div>
								</div>
							</label>
						</div>
						<div class="col-12 col-lg-6 col-xl-4 col-md-6 mb-4">
							<label for="plan2" class="plabel">
								<input type="radio" name="h_id" value="2" id="plan2">
								<div class="plan_box">
									<h2>1 <small>%</small></h2>
									<p>Daily for 40 days</p>
									<div class="plan_subbox text-start">
										<div class="row">
											<div class="col-6 mb-4">
												<p>Total Return</p>
												<h6>140%</h6>
											</div>
											<div class="col-6 mb-4">
												<p>Net Return</p>
												<h6>40%</h6>
											</div>
											<div class="col-6">
												<p>Minimum</p>
												<h6>500 USD</h6>
											</div>
											<div class="col-6">
												<p>Maximum</p>
												<h6>2499USD</h6>
											</div>
										</div>
									</div>
								</div>
							</label>
						</div>
						<div class="col-12 col-lg-6 col-xl-4 col-md-6 mb-4">
							<label for="plan3" class="plabel">
								<input type="radio" name="h_id" value="3" id="plan3">
								<div class="plan_box">
									<h2>1.25 <small>%</small></h2>
									<p>Daily for 40 days</p>
									<div class="plan_subbox text-start">
										<div class="row">
											<div class="col-6 mb-4">
												<p>Total Return</p>
												<h6>150%</h6>
											</div>
											<div class="col-6 mb-4">
												<p>Net Return</p>
												<h6>50%</h6>
											</div>
											<div class="col-6">
												<p>Minimum</p>
												<h6>2500 USD</h6>
											</div>
											<div class="col-6">
												<p>Maximum</p>
												<h6>9999USD</h6>
											</div>
										</div>
									</div>
								</div>
							</label>
						</div>
					</div>
				</div>
				<div class="row process_sec">
					<div class="col-12 col-lg-6 mb-4 my-lg-auto">
						<h6 class="s_plan">Payment Form Account</h6>
						<div class="row">
							{foreach from=$dps item=p name=p}
							<div class="col-6 col-md-4">
								<label for="process_{$p.id}" class="plabel">
									<input type="radio" name=type value="process_{$p.id}" id="process_{$p.id}">
									<div class="pp_icon_box pp_icon_box2">
										<div class="d-flex justify-content-center">
											<img src="./img/pp/{$p.id}.svg" class="img-fluid my-auto" alt="">
											<p class="my-auto">{$p.name}</p>
										</div>
									</div>
								</label>
							</div>
							{/foreach}
						</div>
					</div>
					<div class="col-12 col-lg-6 my-auto">
						<h6 class="s_plan">Payment Form Balance</h6>
						<div class="row">
							{foreach from=$dps item=p name=p}
							<div class="col-6 col-md-4">
								<label for="account_{$p.id}" class="plabel">
									<input type="radio" name=type value="account_{$p.id}" id="account_{$p.id}">
									<div class="pp_icon_box">
										<div class="d-flex justify-content-center">
											<img src="./img/pp/{$p.id}.svg" class="img-fluid my-auto" alt="">
											<p class="my-auto">{$p.name}</p>
										</div>
										<h4>{$p.available|fiat:$p.id}</h4>
									</div>
								</label>
							</div>
							{/foreach}
						</div>
					</div>
				</div>
				<div class="submit_sec">
					<h6 class="s_plan">Invest Amount <small>(50USD- Unlimited)</small></h6>
					<input type="text" class="form-control" name="" name=amount value='{$frm.amount|default:$min_deposit|amount_format}' id="">
					<button class="btn acc_btn1">Deposit</button>
				</div>
			</form>
        </div>
    </div>


{literal}
<script language=javascript>
/*
for (i = 0; i<document.spendform.type.length; i++) {
  if ((document.spendform.type[i].value.match(/^process_/))) {
    document.spendform.type[i].checked = true;
    break;
  }
}
*/
updateCompound();
</script>
{/literal}

{/if}
{include file="footer3.tpl"}