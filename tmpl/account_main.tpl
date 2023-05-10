{include file="header3.tpl" title="Dashboard" meta_title="Dashboard - {$settings.site_name}"}

    <div class="account_page">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-3 mb-4">
                    <div class="acc_box1">
                        <p>Balance</p>
                        <h5>${$ab_formated.total}</h5>
                        <a href="" class="btn acc_btn1 mb-lg-2 mb-xl-0 me-2">Deposit</a>
                        <a href="" class="btn acc_btn2">Withdraw</a>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-3 mb-4">
                    <div class="acc_box1 acc_box2">
                        <p>Earnings</p>
                        <h5>${$ab_formated.earning}</h5>
                        <p>Investment</p>
                        <h5 class="mb-0">${$ab_formated.deposit}</h5>
                    </div>
                </div>
                <div class="col-12 col-lg-6 mb-4">
                    <div class="acc_box3 d-flex justify-content-between">
                        <div class="my-lg-auto mb-4">
                            <div style="margin-bottom: 50px;">
                                <h6>Full Name:</h6>
                                <p>{$userinfo.name}</p>
                            </div>
                            <div>
                                <h6>Username:</h6>
                                <p>{$userinfo.username}</p>
                            </div>
                        </div>
                        <div class="text-center my-auto">
                            <h6>IP Address:</h6>
                            <p class="mb-4"><span>{$userinfo.ip}</span></p>
                            <h6>Registration Date:</h6>
                            <p><span>{$userinfo.create_account_date}</span></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="pp_icon">
                <div class="owl-carousel owl-theme">
                    {foreach from=$ps item=p}
                    <div class="pp_icon_box item">
                        <div class="d-flex justify-content-center">
                            <img src="./img/pp/{$p.id}.svg" class="img-fluid my-auto" alt="">
                            <p class="my-auto">{$p.name}</p>
                        </div>
                        <h4>{$p.balance|fiat:$p.id}</h4>
                    </div>
                    {/foreach}
                </div>
            </div>
            <div class="investment_plan">
                <h3>Quick Start</h3>
                <div class="row text-center">
                    <div class="col-12 col-lg-6 col-xl-4 col-md-6 mb-4">
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
                            <a href="?a=deposit" class="btn custom_btn2">Invest now</a>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 col-xl-4 col-md-6 mb-4">
                        <div class="plan_box active">
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
                            <a href="?a=deposit" class="btn custom_btn1">Invest now</a>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 col-xl-4 col-md-6 mb-4">
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
                            <a href="?a=deposit" class="btn custom_btn2">Invest now</a>
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
        </div>
    </div>

{include file="footer3.tpl"}