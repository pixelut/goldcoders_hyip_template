<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{$meta_title|default:$settings.site_name}</title>
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

<body class="admin_page company_page">
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
                        <a class="nav-link" href="?a=account">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="?a=deposit">Deposits</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="?a=withdraw">Withdraw</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="?a=earnings">Transactions</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="?a=referals">Partners</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="?a=referallinks">Promo</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link me-lg-0" href="?a=edit_account">Settings</a>
                    </li>
                </ul>
                <div class="d-flex">
                    <a href="?a=logout" class="btn custom_btn1">Log Out</a>
                </div>
            </div>
        </div>
    </nav>
    <!-- !Navbar -->

    <!-- Hero -->
    <div class="hero">
        <div class="container">
            <h2 class="page_title2">{$title}</h2>
        </div>
    </div>
    <!-- !Hero -->