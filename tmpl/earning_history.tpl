{include file="header3.tpl" title="Transactions History" meta_title="Transactions History - {$settings.site_name}"}

{literal}
<script language=javascript>
function go(p)
{
  document.opts.page.value = p;
  document.opts.submit();
}
</script>
{/literal}

    <div class="transactions_page">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-3 mb-5">
                    <form method=post name=opts>
                        <input type=hidden name=a value=history>
                        <input type=hidden name=page value={$current_page}>
                        <div>
                            <label>Operation type</label>
                            <select class="form-select" name=type onchange="document.opts.submit();">
                                <option>All transactions</option>
                                {section name=opt loop=$options}
                                <option value="{$options[opt].type}" {if $options[opt].selected}selected{/if}>{$options[opt].type_name}</option>
                                {/section}
                            </select>
                        </div>
                        <div>
                            <label>Currency</label>
                            <select class="form-select" name=ec>
                                <option value=-1>All eCurrencies</option>
                                {section name=ec loop=$ecs}
                                <option value={$ecs[ec].id} {if $frm.ec eq $ecs[ec].id}selected{/if}>{$ecs[ec].name}</option>
                                {/section}
                            </select>
                        </div>
                        <div>
                            <label>From</label>
                            <div class="row">
                                <div class="col-3">
                                    <select class="form-select" name=day_from>
                                        {section name=day_from loop=$day}
                                        <option value={$smarty.section.day_from.index+1} {if $smarty.section.day_from.index+1 == $frm.day_from}selected{/if}>{$day[day_from]}</option>
                                        {/section}
                                    </select>
                                </div>
                                <div class="col-5">
                                    <select class="form-select" name=month_from>
                                        {section name=month_from loop=$month}
                                        <option value={$smarty.section.month_from.index+1} {if $smarty.section.month_from.index+1 == $frm.month_from}selected{/if}>{$month[month_from]}</option>
                                        {/section}
                                    </select>
                                </div>
                                <div class="col-4">
                                    <select class="form-select" name=year_from>
                                        {section name=year_from loop=$year}
                                        <option value={$year[year_from]} {if $year[year_from] == $frm.year_from}selected{/if}>{$year[year_from]}</option>
                                        {/section}
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div>
                            <label>From</label>
                            <div class="row">
                                <div class="col-3">
                                    <select class="form-select" name=day_to>
                                        {section name=day_to loop=$day}
                                        <option value={$smarty.section.day_to.index+1} {if $smarty.section.day_to.index+1 == $frm.day_to}selected{/if}>{$day[day_to]}</option>
                                        {/section}
                                    </select>
                                </div>
                                <div class="col-5">
                                    <select class="form-select" name=month_to>
                                        {section name=month_to loop=$month}
                                        <option value={$smarty.section.month_to.index+1} {if $smarty.section.month_to.index+1 == $frm.month_to}selected{/if}>{$month[month_to]}</option>
                                        {/section}
                                    </select>
                                </div>
                                <div class="col-4">
                                    <select class="form-select" name=year_to>
                                        {section name=year_to loop=$year}
                                        <option value={$year[year_to]} {if $year[year_to] == $frm.year_to}selected{/if}>{$year[year_to]}</option>
                                        {/section}
                                    </select>
                                </div>
                            </div>
                        </div>
                        <button class="acc_btn1 btn mt-3">Search</button>
                    </form>
                </div>
                <div class="col-12 col-lg-9 mt-lg-4 pt-lg-2">
                    <div class="table-responsive">
                        <table class="table table-striped table-borderless">
                            <thead>
                                <tr>
                                    <th scope="col">Date</th>
                                    <th scope="col">Type</th>
                                    <th scope="col">Amount</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach from=$trans item=t}
                                <tr>
                                    <td>{$t.d}</td>
                                    <td>{$t.description|escape:html}</td>
                                    <td>{$t.amount|fiat:$t.ec} <img src="./img/pp/{$t.ec}.svg" align=absmiddle hspace=1 class="ms-1" height=17></td>
                                </tr>
                                {foreachelse}
                                <tr>
                                    <td colspan=3>No transactions found</td>
                                </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                    <div class="d-flex justify-content-center mt-4">
                        {paginator col=$paginator.col cur=$paginator.cur url="javascript:go('%s')"}
                    </div>
                </div>
            </div>
        </div>
    </div>

{include file="footer3.tpl"}