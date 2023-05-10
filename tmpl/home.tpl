{include file="header.tpl"}

    <!-- Hero -->
    <div class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-12 my-lg-auto mb-4 text-center text-lg-start">
                    <h1>Make money on
                        cryptocurrency
                        market</h1>
                    <p>The Advance Trading platform gives you the opportunity to earn safely by participating in
                        high-yield investment .</p>
                    <div class="d-flex flex-column flex-md-row">
                        <div class="d-flex flex-column flex-md-row">
                        {if $userinfo.logged != 1}
                        <a href="?a=login" class="btn custom_btn1 me-lg-4 mb-4 mb-lg-0">Login</a>
                        <a href="?a=signup" class="btn custom_btn2">Signup</a>
                        {else}
                        <a href="?a=deposit" class="btn custom_btn1 me-lg-4 mb-4 mb-lg-0">Start earning</a>
                        <a href="?a=account" class="btn custom_btn2">Dashboard</a>
                        {/if}
                    </div>
                    </div>
                </div>
                <div class="col-lg-6 col-12 my-lg-auto text-center">
                    <img src="./img/heroimg.png" class="img-fluid" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- !Hero -->

    <!-- Brand -->
    <div class="brand">
        <img src="./img/brandimg.png" class="img-fluid" alt="">
    </div>
    <!-- !Brand -->

    <!-- Investment plan -->
    <div class="investment_plan text-center">
        <div class="container">
            <h2>Investment plan</h2>
            <div class="row">
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
                        {if $userinfo.logged != 1}
                        <a href="?a=login" class="btn custom_btn2">Login</a>
                        {else}
                        <a href="?a=deposit" class="btn custom_btn2">Invest now</a>
                        {/if}
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
                        {if $userinfo.logged != 1}
                        <a href="?a=login" class="btn custom_btn2">Login</a>
                        {else}
                        <a href="?a=deposit" class="btn custom_btn2">Invest now</a>
                        {/if}
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
                        {if $userinfo.logged != 1}
                        <a href="?a=login" class="btn custom_btn2">Login</a>
                        {else}
                        <a href="?a=deposit" class="btn custom_btn2">Invest now</a>
                        {/if}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- !Investment plan -->

    <!-- Features -->
    <div class="features text-center">
        <div class="container">
            <h2>Features to grow your crypto assets</h2>
            <div class="row">
                <div class="col-lg-6 col-12 col-md-6 col-xl-3 mb-4">
                    <div class="features_box">
                        <div class="features_img_box">
                            <img src="./img/home.svg" class="img-fluid" alt="">
                        </div>
                        <h6>Official incorporation</h6>
                        <p>Three companies of Advance Trading Group are officially registered in the base jurisdictions
                            for crypto-business - Hong Kong, Australia and the UK.</p>
                    </div>
                </div>
                <div class="col-lg-6 col-12 col-md-6 col-xl-3 mb-4">
                    <div class="features_box">
                        <div class="features_img_box">
                            <img src="./img/verified (1).svg" class="img-fluid" alt="">
                        </div>
                        <h6>All funds are protected</h6>
                        <p>Advance Trading cares about your security. The most advanced algorithms protect our IT
                            infrastructure.</p>
                    </div>
                </div>
                <div class="col-lg-6 col-12 col-md-6 col-xl-3 mb-4">
                    <div class="features_box">
                        <div class="features_img_box">
                            <img src="./img/wall-clock.svg" class="img-fluid" alt="">
                        </div>
                        <h6>Instant transactions</h6>
                        <p>You don't have to wait, we've done everything to make it convenient for you to work. </p>
                    </div>
                </div>
                <div class="col-lg-6 col-12 col-md-6 col-xl-3 mb-4">
                    <div class="features_box">
                        <div class="features_img_box">
                            <img src="./img/040---Analytics.svg" class="img-fluid" alt="">
                        </div>
                        <h6>Low fees</h6>
                        <p>We set minimum withdrawal fees. Fast and convenient withdrawal of funds is one of the
                            services included in the total package of Advance Trading.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- !Features -->

    <!-- About Us -->
    <div class="aboutus">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-6">
                    <h2>About Us</h2>
                    <p>Advance Trading is a growing brand on the market of cryptocurrencies and financial technology.
                        Today, Advance Trading is:</p>
                    <ul>
                        <li>
                            <p>A team of professionals capable of implementing projects of any kind</p>
                        </li>
                        <li>
                            <p>Unique expertise in all areas of cryptocurrency business.</p>
                        </li>
                        <li>
                            <p>Reliable, efficient and secure solutions for investing in crypto-assets.</p>
                        </li>
                    </ul>
                </div>
                <div class="col-12 col-lg-6 text-lg-end text-center">
                    <img src="./img/aboutus.png" class="img-fluid" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- !About Us -->

    <!-- Our companies -->
    <div class="companies">
        <div class="container">
            <h2>Our companies</h2>
            <div class="row">
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="companies_box">
                        <img src="./img/Rectangle 40869.png" class="img-fluid" alt="">
                        <div class="companies_box_body">
                            <p>Dubai</p>
                            <h5>Advance Trading Company Limited</h5>
                            <h6>Company number: 2420359</h6>
                            <a href="" class="custom_btn2 btn">Certificate</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="companies_box">
                        <img src="./img/Rectangle 40887.png" class="img-fluid" alt="">
                        <div class="companies_box_body">
                            <p>Hong Kong</p>
                            <h5>Advance Trading Company Limited</h5>
                            <h6>Company number: 2420359</h6>
                            <a href="" class="custom_btn2 btn">Certificate</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="companies_box">
                        <img src="./img/Rectangle 40888.png" class="img-fluid" alt="">
                        <div class="companies_box_body">
                            <p>Thailand</p>
                            <h5>Advance Trading Company Limited</h5>
                            <h6>Company number: 2420359</h6>
                            <a href="" class="custom_btn2 btn">Certificate</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- !Our companies -->

    <!-- Advance -->
    <div class="advance">
        <div class="container">
            <h2>Advance Trading investment strategies</h2>
            <div class="advance_box">
                <div class="row">
                    <div class="col-12 col-lg-6 mb-4 my-lg-auto">
                        <p>Advance Trading's perfect algorithms.</p>
                        <h1>Algorithmic <br> crypto trading</h1>
                        <div class="row">
                            <div class="col-md-4 col-12 mb-4 d-flex">
                                <img src="./img/profit 4.svg" class="img-fluid mb-auto" alt="">
                                <h6 class="mb-auto">Profits accrue every second</h6>
                            </div>
                            <div class="col-md-4 col-12 mb-4 d-flex">
                                <img src="./img/wall-clock.svg" class="img-fluid mb-auto" alt="">
                                <h6 class="mb-auto">Principal back at any time</h6>
                            </div>
                            <div class="col-md-4 col-12 mb-4 d-flex">
                                <img src="./img/040---Analytics.svg" class="img-fluid mb-auto" alt="">
                                <h6 class="mb-auto">Low return on investment</h6>
                            </div>
                        </div>
                        {if $userinfo.logged != 1}
                        <a href="?a=login" class="btn custom_btn1">Login</a>
                        {else}
                        <a href="?a=deposit" class="btn custom_btn2">Start earning</a>
                        {/if}
                    </div>
                    <div class="col-12 col-lg-6 my-auto">
                        <div class="video_box">
                            <div class="video_img_box">
                                <img src="./img/Rectangle 40880.png" class="img-fluid video_img" alt="">
                                <button class="play_btn btn"><img src="./img/play_btn.svg" class="img-fluid"
                                        alt=""></button>
                            </div>
                            <h5>Video: Learn about Algorithmic Trading from Advance Trading</h5>
                        </div>
                    </div>
                </div>
            </div>
            <div class="advance_box">
                <div class="row">
                    <div class="col-12 col-lg-6 mb-4 my-lg-auto">
                        <div class="video_box">
                            <div class="video_img_box">
                                <img src="./img/Rectangle 408801.png" class="img-fluid video_img" alt="">
                                <button class="play_btn btn"><img src="./img/play_btn.svg" class="img-fluid"
                                        alt=""></button>
                            </div>
                            <h5>Video: Learn about Professional crypto trading from Advance Trading</h5>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6  my-auto">
                        <p>Experience and expertise from Advance Trading</p>
                        <h1>Professional <br> crypto trading</h1>
                        <div class="row">
                            <div class="col-md-4 col-12 mb-4 d-flex">
                                <img src="./img/profit 4.svg" class="img-fluid mb-auto" alt="">
                                <h6 class="mb-auto">Profits accrue every day</h6>
                            </div>
                            <div class="col-md-4 col-12 mb-4 d-flex">
                                <img src="./img/wall-clock.svg" class="img-fluid mb-auto" alt="">
                                <h6 class="mb-auto">Principal back after the end of the deposit</h6>
                            </div>
                            <div class="col-md-4 col-12 mb-4 d-flex">
                                <img src="./img/040---Analytics.svg" class="img-fluid mb-auto" alt="">
                                <h6 class="mb-auto">Average return on investment</h6>
                            </div>
                        </div>
                        {if $userinfo.logged != 1}
                        <a href="?a=login" class="btn custom_btn1">Login</a>
                        {else}
                        <a href="?a=deposit" class="btn custom_btn2">Start earning</a>
                        {/if}
                    </div>
                </div>
            </div>
            <div class="advance_box">
                <div class="row">
                    <div class="col-12 col-lg-6 mb-4 my-lg-auto">
                        <p>Business in the Cloud from Advance Trading</p>
                        <h1>Cloud mining</h1>
                        <div class="row">
                            <div class="col-md-4 col-12 mb-4 d-flex">
                                <img src="./img/profit 4.svg" class="img-fluid mb-auto" alt="">
                                <h6 class="mb-auto">Profit accrual after the end of deposit</h6>
                            </div>
                            <div class="col-md-4 col-12 mb-4 d-flex">
                                <img src="./img/wall-clock.svg" class="img-fluid mb-auto" alt="">
                                <h6 class="mb-auto">Principal back is not available</h6>
                            </div>
                            <div class="col-md-4 col-12 mb-4 d-flex">
                                <img src="./img/040---Analytics.svg" class="img-fluid mb-auto" alt="">
                                <h6 class="mb-auto">Very high return on investment</h6>
                            </div>
                        </div>
                        {if $userinfo.logged != 1}
                        <a href="?a=login" class="btn custom_btn1">Login</a>
                        {else}
                        <a href="?a=deposit" class="btn custom_btn2">Start earning</a>
                        {/if}
                    </div>
                    <div class="col-12 col-lg-6 my-auto">
                        <div class="video_box">
                            <div class="video_img_box">
                                <img src="./img/Rectangle 408802.png" class="img-fluid video_img" alt="">
                                <button class="play_btn btn"><img src="./img/play_btn.svg" class="img-fluid"
                                        alt=""></button>
                            </div>
                            <h5>Video: Learn about Algorithmic Trading from Advance Trading</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- !Advance -->

    <!-- Cryptocurrencies -->
    <div class="cryptocurrencies text-center">
        <div class="container">
            <h2>Cryptocurrencies</h2>
            <p>You get the maximum choice of cryptocurrencies and payment systems. We are constantly expanding our
                portfolio of crypto-assets and deposit and withdrawal options.</p>
            <div class="payment_icon">
                <div class="mb-4">
                    <img src="./img/bticoin.svg" class="img-fluid" alt="">
                </div>
                <div class="mb-4">
                    <img src="./img/ethereum.svg" class="img-fluid" alt="">
                </div>
                <div class="mb-4">
                    <img src="./img/trc.svg" class="img-fluid" alt="">
                </div>
                <div class="mb-4">
                    <img src="./img/litecoin.svg" class="img-fluid" alt="">
                </div>
                <div class="mb-4">
                    <img src="./img/doge.svg" class="img-fluid" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- !Cryptocurrencies -->

    <!-- Affiliate program -->
    <div class="affiliate">
        <div class="container">
            <h2>Affiliate program</h2>
            <p>Become a partner of Advance Trading, set up your own affiliate structures, earn money and enjoy the
                affiliate privileges.</p>
            <div class="row">
                <div class="col-12 col-md-6 col-lg-6 col-xl-4 mb-4">
                    <div class="affiliate_box1">
                        <h4>Algorithmic trading</h4>
                        <p>Rewards up to 50% of partner's profit is accrued every second as long as your partner's
                            deposit is active.
                        </p>
                        <a href="" class="custom_btn1 btn">Read More</a>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-6 col-xl-4 mb-4">
                    <div class="affiliate_box1">
                        <h4>Professional, NFT trading </h4>
                        <p style="margin-top: 48px !important;">Affiliate rewards up to 36% of your partner's deposit is
                            credited
                            immediately after your
                            partner's deposit is activated.
                        </p>
                        <a href="" class="custom_btn1 btn">Read More</a>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-6 col-xl-4 mb-4">
                    <div class="affiliate_box1">
                        <h4>Affiliate rewards</h4>
                        <p>Get extra bonus up to $750,000. High bonuses and affiliate privileges - profitable business
                            with Advance Trading.
                        </p>
                        <a href="" class="custom_btn1 btn">Read More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- !Affiliate program -->

    <!-- Our roadmap -->
    <div class="roadmap">
        <div class="container">
            <h2>Our roadmap</h2>
            <p>Since 2015, Advance Trading has evolved from a group of enthusiasts to a global investment group
                represented in the main centers of the global cryptocurrency business.</p>
            <div class="roadmap_details">
                <div class="row">
                    <div class="col-12 col-lg-6">
                        <div class="roadmap_box roadmap_box_left">
                            <h5>2015</h5>
                            <h4>Start</h4>
                            <h6>Lorem ipsum dolor sit amet consectetur. Elit massa erat vitae non semper quis. Morbi sed
                                aliquet
                                donec facilisis. Senectus eget.</h6>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6">
                        <div class="roadmap_box roadmap_box_right">
                            <h5>2016</h5>
                            <h4>Q1-Q2</h4>
                            <h6>Lorem ipsum dolor sit amet consectetur. Elit massa erat vitae non semper quis. Morbi sed
                                aliquet
                                donec facilisis. Senectus eget.</h6>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6">
                        <div class="roadmap_box roadmap_box_left">
                            <h5>2016</h5>
                            <h4>Q3</h4>
                            <h6>Lorem ipsum dolor sit amet consectetur. Elit massa erat vitae non semper quis. Morbi sed
                                aliquet
                                donec facilisis. Senectus eget.</h6>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6">
                        <div class="roadmap_box roadmap_box_right">
                            <h5>2017</h5>
                            <h4>Q1 - Q4</h4>
                            <h6>Lorem ipsum dolor sit amet consectetur. Elit massa erat vitae non semper quis. Morbi sed
                                aliquet
                                donec facilisis. Senectus eget.</h6>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6">
                        <div class="roadmap_box roadmap_box_left">
                            <h5>2018-2021</h5>
                            <h4>Q1 - Q4</h4>
                            <h6>Lorem ipsum dolor sit amet consectetur. Elit massa erat vitae non semper quis. Morbi sed
                                aliquet
                                donec facilisis. Senectus eget.</h6>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6">
                        <div class="roadmap_box roadmap_box_right">
                            <h5>2022</h5>
                            <h4>Q1</h4>
                            <h6>Lorem ipsum dolor sit amet consectetur. Elit massa erat vitae non semper quis. Morbi sed
                                aliquet
                                donec facilisis. Senectus eget.</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- !Our roadmap -->

    <!-- What users say about us -->
    <div class="rating">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-6 my-lg-auto mb-4">
                    <h2>What users say about us</h2>
                    <p>You can talk about yourself a lot, but it's better to listen to what others have to say</p>
                    <div class="rating_box">
                        <h5>Experience Rating</h5>
                        <h6>Thanks for akk user for <br>
                            your feedback so far</h6>
                        <img src="./img/star.png" class="img-fluid" alt="">
                        <a href="" class="btn">Leave a Review</a>
                    </div>
                </div>
                <div class="col-12 col-lg-6 my-auto">
                    <div class="owl-carousel owl-theme">
                        <div class="item">
                            <p>Paul Walker</p>
                            <p>This product is great and offers you a great cash
                                back in the form of bitcoin and other cryptps</p>
                            <img src="./img/star.png" class="img-fluid" alt="">
                        </div>
                        <div class="item">
                            <p>Paul Walker</p>
                            <p>This product is great and offers you a great cash
                                back in the form of bitcoin and other cryptps</p>
                            <img src="./img/star.png" class="img-fluid" alt="">
                        </div>
                        <div class="item">
                            <p>Paul Walker</p>
                            <p>This product is great and offers you a great cash
                                back in the form of bitcoin and other cryptps</p>
                            <img src="./img/star.png" class="img-fluid" alt="">
                        </div>
                        <div class="item">
                            <p>Paul Walker</p>
                            <p>This product is great and offers you a great cash
                                back in the form of bitcoin and other cryptps</p>
                            <img src="./img/star.png" class="img-fluid" alt="">
                        </div>
                        <div class="item">
                            <p>Paul Walker</p>
                            <p>This product is great and offers you a great cash
                                back in the form of bitcoin and other cryptps</p>
                            <img src="./img/star.png" class="img-fluid" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- !What users say about us -->

    <!-- Our blog -->
    <div class="blog">
        <div class="container">
            <h2>Our blog</h2>
            <div class="row">
                <div class="col-12 col-md-6 col-lg-6 col-xl-4 mb-4">
                    <div class="blog_box card">
                        <img src="./img/Rectangle 40889.png" class="img-fluid" alt="">
                        <div class="blog_box_body card-body">
                            <h4>Extended affiliate program</h4>
                            <p>Advance Trading introduces an extended affiliate program. Career rewards are now
                                available
                                for you</p>
                        </div>
                        <div class="card-footer bg-transparent border-0 d-flex justify-content-between">
                            <a href="" class="custom_btn2 btn my-auto">Read more</a>
                            <h5 class="my-auto">DEC 1, 2022</h5>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-6 col-xl-4 mb-4">
                    <div class="blog_box card">
                        <img src="./img/Rectangle 408891.png" class="img-fluid" alt="">
                        <div class="blog_box_body card-body">
                            <h4>Polkadot is already available.</h4>
                            <p>We have added a BEP-20 DOT token to our cryptocurrency portfolio - the Polkadot project's
                                own token.</p>
                        </div>
                        <div class="card-footer bg-transparent border-0 d-flex justify-content-between">
                            <a href="" class="custom_btn2 btn my-auto">Read more</a>
                            <h5 class="my-auto">DEC 3, 2022</h5>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-6 col-xl-4 mb-4">
                    <div class="blog_box card">
                        <img src="./img/Rectangle 408892.png" class="img-fluid" alt="">
                        <div class="blog_box_body card-body">
                            <h4>BLACK FRIDAY Bonus</h4>
                            <p>Black Friday - a time of great discounts, bargains and investments. To celebrate Black
                                Friday, Advance Trading announces a promotion for our investors.</p>
                        </div>
                        <div class="card-footer bg-transparent border-0 d-flex justify-content-between">
                            <a href="" class="custom_btn2 btn my-auto">Read more</a>
                            <h5 class="my-auto">DEC 7, 2022</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- !Our blog -->

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
