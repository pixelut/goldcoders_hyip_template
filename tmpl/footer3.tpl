    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-3 mb-4 mb-lg-auto">
                    <a class="navbar-brand" href="#">Navbar</a>
                    <div class="social">
                        <a href="">
                            <img src="./img/twitter.svg" class="img-fluid" alt="">
                        </a>
                        <a href="">
                            <img src="./img/linkedin.svg" class="img-fluid" alt="">
                        </a>
                        <a href="">
                            <img src="./img/facebook icon.svg" class="img-fluid" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-12 col-lg-9">
                    <div class="row">
                        <div class="col-12 col-md-4">
                            <div class="d-flex">
                                <img src="./img/case.svg" class="img-fluid mb-auto" alt="">
                                <p>10:00 am - 6:00 pm <br>
                                    (Company working hours)</p>
                            </div>
                        </div>
                        <div class="col-12 col-md-4">
                            <div class="d-flex">
                                <img src="./img/phone.svg" class="img-fluid mb-auto" alt="">
                                <p>+3435465777 <br>
                                    (Company call center)</p>
                            </div>
                        </div>
                        <div class="col-12 col-md-4">
                            <div class="d-flex">
                                <img src="./img/settings1.svg" class="img-fluid mb-auto" alt="">
                                <p>support@company.com <br>
                                    (Technical support)</p>
                            </div>
                        </div>
                    </div>
                    <nav class="navbar footer_nav navbar-expand-lg navbar-dark">
                        <div class="container-fluid">
                            <a class="navbar-brand d-lg-none d-block" href="?a=home">Navbar</a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                data-bs-target="#footerNav" aria-controls="footerNav" aria-expanded="false"
                                aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="footerNav">
                                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                                    <li class="nav-item">
                                        <a class="nav-link" href="?a=company">Company</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="?a=rules">Rules</a>
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
                                    <a class="my-auto me-3 btn custom_btn1" href="?a=login">Sign in</a>
                                    <a href="?a=signup" class="btn custom_btn2">Sign up</a>
                                    {else}
                                    <a class="my-auto me-3 btn custom_btn1" href="?a=account">Dashboard</a>
                                    <a href="?a=logout" class="btn custom_btn2">Log Out</a>
                                    {/if}
                                </div>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </footer>
    <!-- !Footer -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <!-- Owl Carousel -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
        integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
        $('.owl-carousel').owlCarousel({
            loop: true,
            margin: 10,
            nav: false,
            responsive: {
                0: {
                    items: 2
                },
                600: {
                    items: 3
                },
                1000: {
                    items: 6
                }
            }
        })
    </script>
</body>

</html>