{assign var="allow" value="all"}
{assign var="meta_title" value="Company"}
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Company - {$settings.site_name}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <!-- External CSS -->
    <link rel="stylesheet" href="./css/style.css">

    <!-- Owl Carousel -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css"
        integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css"
        integrity="sha512-OTcub78R3msOCtY3Tc6FzeDJ8N9qvQn1Ph49ou13xgA9VsH9+LRxoFU6EqLhW4+PKRfU+/HReXmSZXHEkpYoOA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body class="company_page">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="?a=home">Navbar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="?a=company">Company</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="?a=rules">rules</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="?a=roadmap">Roadmap</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="?a=news">Blog</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link me-lg-0" href="?a=support">Contact</a>
                    </li>
                </ul>
                <div class="d-flex">
                    {if $userinfo.logged != 1}
                    <a class="nav-link me-0 my-auto" href="?a=login">Sign in</a>
                    <a href="?a=signup" class="btn custom_btn1">Sign up</a>
                    {else}
                    <a class="nav-link me-0 my-auto" href="?a=account">Dashboard</a>
                    <a href="?a=logout" class="btn custom_btn1">Log Out</a>
                    {/if}
                </div>
            </div>
        </div>
    </nav>
    <!-- !Navbar -->

    <!-- Hero -->
    <div class="company_hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-12 my-lg-auto mb-4 text-center text-lg-start">
                    <h1>Investing.Now available to everyone.</h1>
                    <p>The Advance Trading platform gives you the opportunity to earn safely by participating in
                        high-yield investment .</p>
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
                <div class="col-lg-6 col-12 my-lg-auto text-center">
                    <img src="./img/27410570_b2b_bus_analit_16 [Converted] 1.png" class="img-fluid" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- !Hero -->

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

    <!-- About Us -->
    <div class="aboutus">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-6 text-lg-start text-center">
                    <img src="./img/27410570_b2b_bus_analit_16 [Converted] 2.png" class="img-fluid" alt="">
                </div>
                <div class="col-12 col-lg-6">
                    <h2>Who we are</h2>
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
            </div>
        </div>
    </div>
    <!-- !About Us -->

    <!-- Our Team -->
    <div class="team">
        <div class="container">
            <h2>Our team</h2>
            <div class="row">
                <div class="col-12 col-md-4 col-lg-3 mb-4">
                    <div class="team_box">
                        <img src="./img/Ellipse 47.png" class="img-fluid" alt="">
                        <h5>Melissa Perkins</h5>
                        <p>CEO</p>
                    </div>
                </div>
                <div class="col-12 col-md-4 col-lg-3 mb-4">
                    <div class="team_box">
                        <img src="./img/Ellipse 58.png" class="img-fluid" alt="">
                        <h5>Carls Jonson</h5>
                        <p>Financial Executive Officer</p>
                    </div>
                </div>
                <div class="col-12 col-md-4 col-lg-3 mb-4">
                    <div class="team_box">
                        <img src="./img/Ellipse 50.png" class="img-fluid" alt="">
                        <h5>Alica mek</h5>
                        <p>Head of Risk Management</p>
                    </div>
                </div>
                <div class="col-12 col-md-4 col-lg-3 mb-4">
                    <div class="team_box">
                        <img src="./img/Ellipse 63.png" class="img-fluid" alt="">
                        <h5>Carls Jonson</h5>
                        <p>Financial Executive Officer</p>
                    </div>
                </div>
                <div class="col-12 col-md-4 col-lg-3 mb-4">
                    <div class="team_box">
                        <img src="./img/Ellipse 52.png" class="img-fluid" alt="">
                        <h5>Henrik Lundgren</h5>
                        <p>Head of cloud mining</p>
                    </div>
                </div>
                <div class="col-12 col-md-4 col-lg-3 mb-4">
                    <div class="team_box">
                        <img src="./img/Ellipse 51.png" class="img-fluid" alt="">
                        <h5>Max SMith</h5>
                        <p>Head of Algorithmic trading</p>
                    </div>
                </div>
                <div class="col-12 col-md-4 col-lg-3 mb-4">
                    <div class="team_box">
                        <img src="./img/Ellipse 43.png" class="img-fluid" alt="">
                        <h5>Rita Tate</h5>
                        <p>Head of Risk Management</p>
                    </div>
                </div>
                <div class="col-12 col-md-4 col-lg-3 mb-4">
                    <div class="team_box">
                        <img src="./img/Ellipse 42.png" class="img-fluid" alt="">
                        <h5>Zends Mars</h5>
                        <p>Financial Executive Officer</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- !Our Team -->

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

    <!-- Started -->
    <div class="started">
        <div class="container">
            <div class="started_box">
                <h2>Ready to get started?</h2>
                <p>Let’s create new something.</p>
                <a href="?a=register" class="btn custom_btn1">Explore now</a>
            </div>
        </div>
    </div>
    <!-- !Started -->

{include file="footer.tpl"}