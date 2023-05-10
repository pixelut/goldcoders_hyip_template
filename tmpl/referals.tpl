{include file="header3.tpl" title="Affiliate Partner" meta_title="Affiliate Partner - {$settings.site_name}"}

    <div class="partner_page">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-4 mb-4">
                    <div class="partner_box">
                        <div>
                            <p>Total referrals</p>
                            <h4>{$total_ref}</h4>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4 mb-4">
                    <div class="partner_box">
                        <div>
                            <p>Total active referrals</p>
                            <h4>{$active_ref}</h4>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4 mb-4">
                    <div class="partner_box">
                        <div>
                            <p>Total affiliates comission</p>
                            <h4>{$currency_sign}{$commissions}</h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="started_box2">
                <h3>Get Additonal Bonuses</h3>
                <h6>Share referral Link</h6>
                <div class="d-flex justify-content-center flex-wrap">
                    <div class="input-group">
                        <img src="./img/link.svg" class="img-fluid" alt="">
                        <input type="text" class="form-control" value="{"?ref=`$userinfo.username`"|encurl:0:1}" readonly>
                    </div>
                    <button class="btn"><img src="./img/copy.svg" class="img-fluid" alt=""></button>
                </div>
            </div>
            <div class="table-responsive mb-5">
                <table class="table table-striped table-borderless">
                    <thead>
                        <tr>
                            <th scope="col">Date</th>
                            <th scope="col">Username</th>
                            <th scope="col">Investments</th>
                        </tr>
                    </thead>
                    <tbody>
                        {if $show_refstat}
                        {section name=s loop=$refstat}
                        <tr>
                            <td>{$refstat[s].date}</td>
                            <td>{$refstat[s].reg}</td>
                            <td>{$refstat[s].income}</td>
                        </tr>
                        {/section}
                        {else}
                        <tr>
                             <td colspan=3>No statistics found for this period.</td>
                        </tr>
                        {/if}
                    </tbody>
                </table>
            </div>
            {if $settings.show_referals}
            <div class="table-responsive mb-5">
                <table class="table table-striped table-borderless">
                    <thead>
                        <tr>
                            <th scope="col">Nickname</th>
                            <th scope="col">E-mail</th>
                            <th scope="col">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        {section name=s loop=$referals}
                        <tr>
                            <td>{$referals[s].username}</td>
                            <td><a href=mailto:{$referals[s].email}>{$referals[s].email}</a></td>
                            <td>{if $referals[s].q_deposits > 0}Deposited{else}No deposit yet{/if}</td>
                        </tr>
                        {/section}
                        {else}
                        <tr>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            {/if}
        </div>
    </div>


{include file="footer3.tpl"}
