{include file="header.tpl"}

<h3>Investors Stats</h3><br>

<table cellspacing=1 cellpadding=2 border=0 width=100%>
<tr>
 <td class=inheader>Username</td>
 <td class=inheader width=200><b>Deposit</b></td>
 <td class=inheader width=170><b>Earn</b></td>
 <td class=inheader width=170><b>Withdraw</b></td>
</tr>
{if $stats}
{section name=s loop=$stats}
<tr>
 <td><b>{$stats[s].username}</b></td>
 <td align=right><b>{$currency_sign}{$stats[s].deposit}</b></td>
 <td align=right><b>{$currency_sign}{$stats[s].earning}</b></td>
 <td align=right><b>{$currency_sign}{$stats[s].withdrawal}</b></td>
</tr>
{/section}
{else}
<tr>
 <td colspan=4 align=center>No transactions found</td>
</tr>
{/if}
{if $stats}
<tr>
 <td><b>TOTAL</b></td>
 <td align=right><b>{$currency_sign}{$total.deposit}</b></td>
 <td align=right><b>{$currency_sign}{$total.earning}</b></td>
 <td align=right><b>{$currency_sign}{$total.withdrawal}</b></td>
</tr>
{/if}
</table>

{paginator col=$paginator.col cur=$paginator.cur url="?a=members_stats&page=%s"}

{include file="footer.tpl"}
