@extends('layouts.app')
@section('container')

<div class="container mt-3">

    <br><br><br><br>
    <div>
        <!-- HEADER SHOP -->
        @if($categories)
        <div class="section-about-categories mt-3 d-flex justify-content-center">
            <h2 data-aos="fade-left">{{ $categories->name }}</h2>
        </div>
        @else
        <div class="section-about mt-3 d-flex justify-content-center">
            <h2 data-aos="fade-left">Belanja</h2>
        </div>
        @endif

        <div class="input-group d-flex justify-content-center mb-3">

            <!-- SEARCH SHOP  -->
            <div class="searchshop-icon">
                <span class="fas fa-search"></span>
            </div>
            <div class="cancelshop-icon">
                <span class="fas fa-times"></span>
            </div>
            <div class="search">
                <form action="/posts">
                    @if(request('categories'))
                    <input type="hidden" name="categories" class="search-data" value="{{ request('categories') }}">
                    @endif
                    <input type="text" name="search" id="search" class="search-data" value="{{ request('search') }}">
                    <button type="submit" class="fas fa-search"></button>
                </form>
            </div>

            <script>
                const searchshopBtn = document.querySelector(".searchshop-icon");
                const cancelshopBtn = document.querySelector(".cancelshop-icon");
                const formshop = document.querySelector("form");

                cancelshopBtn.onclick = () => {
                    searchshopBtn.classList.remove("hide");
                    cancelshopBtn.classList.remove("show");
                    formshop.classList.remove("active");
                    cancelshopBtn.style.color = "#ff3d00";
                }
                searchshopBtn.onclick = () => {
                    formshop.classList.add("active");
                    searchshopBtn.classList.add("hide");
                    cancelshopBtn.classList.add("show");
                }
            </script>
            <br><br>



        </div>

    </div>


    <!-- PRODUCT SHOP  -->
    @if($posts->count() )
    <!-- ------------------------ Pakaian ---------------------------------------------- -->
    @if($categories)
    @if(request('categories') == 'pakaian')

    <section id="shop" class="shop">
        <div class="koleksi">
            <div class="row row-cols-2 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-lg-5">

                @foreach($pakaian as $pakaian)
                <x-post-card :post="$pakaian" />
                @endforeach

            </div>
        </div>
    </section>

    @endif

    <!-- --------------------------------------awalnya------------------------------------------ -->
    @else
    <div class="section-shop">
        <div class="container">
            <div class="row">
                <div class="col-6 col-sm-5 col-md-4 col-xl-3 d-flex justify-content-start">
                    <h2>Pakaian</h2>
                </div>
                <div class="col-2 col-sm-3 col-md-4 col-xl-3 d-flex justify-content-start">
                    <h3></h3>
                </div>
                <div class="col-4 col-sm-4 col-md-4 col-xl-6 d-flex justify-content-end">
                    <a href="/posts?categories=pakaian">lihat semua</a>
                </div>
            </div>
        </div>
    </div>

    <section id="shop" class="shop">
        @if($posts_pakaian->count() )
        <div class="row row-cols-2 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-lg-5">

            @foreach($posts_pakaian as $posts_pakaian)
            <x-post-card :post="$posts_pakaian" />
            @endforeach

        </div>
        @else
        
        <div class="section-product">
            <div class="row">
                <div class="col-3">
                    <div class="fest-img d-flex justify-content-center pulse"><img src="img/no-product.png"></div>
                </div>
                <div class="col-9" style="margin-top: 7%;">
                    <h5 class="d-flex justify-content-start">Belum ada Produk Disini!</h5>
                    <p class="d-flex justify-content-start">Nantikan produk-produk menarik dari Sorak Sorai, dijamin mantapp</p>
                </div>
            </div>
        </div>
        @endif
    </section>
    @endif

    <!-- --------------------------------------end------------------------------------------ -->
    <!-- ------------------------ ATK ---------------------------------------------- -->
    @if($categories)
    @if(request('categories') == 'alat-tulis-dan-kantor')

    <section id="shop" class="shop">
        <div class="koleksi">
            <div class="row row-cols-2 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-lg-5">

                @foreach($atk as $atk)
                <x-post-card :post="$atk" />
                @endforeach

            </div>
        </div>
    </section>

    @endif

    <!-- --------------------------------------awalnya------------------------------------------ -->
    @else
    <div class="section-shop">
        <div class="container">
            <div class="row">
                <div class="col-6 col-sm-5 col-md-4 col-xl-3 d-flex justify-content-start">
                    <h2>Alat Tulis & Kerja</h2>
                </div>
                <div class="col-2 col-sm-3 col-md-4 col-xl-3 d-flex justify-content-start">
                    <h3></h3>
                </div>
                <div class="col-4 col-sm-4 col-md-4 col-xl-6 d-flex justify-content-end">
                    <a href="/posts?categories=alat-tulis-dan-kantor">lihat semua</a>
                </div>
            </div>
        </div>
    </div>

    <section id="shop" class="shop">
        @if($posts_atk->count() )
        <div class="row row-cols-2 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-lg-5">

            @foreach($posts_atk as $posts_atk)
            <x-post-card :post="$posts_atk" />
            @endforeach

        </div>
        @else
        
        <div class="section-product">
            <div class="row">
                <div class="col-3">
                    <div class="fest-img d-flex justify-content-center pulse"><img src="img/no-product.png"></div>
                </div>
                <div class="col-9" style="margin-top: 7%;">
                    <h5 class="d-flex justify-content-start">Belum ada Produk Disini!</h5>
                    <p class="d-flex justify-content-start">Nantikan produk-produk menarik dari Sorak Sorai, dijamin mantapp</p>
                </div>
            </div>
        </div>
        @endif
    </section>
    @endif

    <!-- --------------------------------------end------------------------------------------ -->
    <!-- ------------------------ Kebutuhan Rumah ---------------------------------------------- -->
    @if($categories)
    @if(request('categories') == 'kebutuhan-rumah')

    <section id="shop" class="shop">
        <div class="koleksi">
            <div class="row row-cols-2 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-lg-5">

                @foreach($rumah as $rumah)
                <x-post-card :post="$rumah" />
                @endforeach

            </div>
        </div>
    </section>

    @endif

    <!-- --------------------------------------awalnya------------------------------------------ -->
    @else
    <div class="section-shop">
        <div class="container">
            <div class="row">
                <div class="col-6 col-sm-5 col-md-4 col-xl-3 d-flex justify-content-start">
                    <h2>Kebutuhan Rumah</h2>
                </div>
                <div class="col-2 col-sm-3 col-md-4 col-xl-3 d-flex justify-content-start">
                    <h3></h3>
                </div>
                <div class="col-4 col-sm-4 col-md-4 col-xl-6 d-flex justify-content-end">
                    <a href="/posts?categories=kebutuhan-rumah">lihat semua</a>
                </div>
            </div>
        </div>
    </div>

    <section id="shop" class="shop">
        @if($posts_rumah->count() )
        <div class="row row-cols-2 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-lg-5">

            @foreach($posts_rumah as $posts_rumah)
            <x-post-card :post="$posts_rumah" />
            @endforeach

        </div>
        @else
        
        <div class="section-product">
            <div class="row">
                <div class="col-3">
                    <div class="fest-img d-flex justify-content-center pulse"><img src="img/no-product.png"></div>
                </div>
                <div class="col-9" style="margin-top: 7%;">
                    <h5 class="d-flex justify-content-start">Belum ada Produk Disini!</h5>
                    <p class="d-flex justify-content-start">Nantikan produk-produk menarik dari Sorak Sorai, dijamin mantapp</p>
                </div>
            </div>
        </div>
        @endif
    </section>
    @endif

    <!-- --------------------------------------end------------------------------------------ -->
    <!-- ------------------------ Mini Souvenir ---------------------------------------------- -->
    @if($categories)
    @if(request('categories') == 'mini-souvenir')

    <section id="shop" class="shop">
        <div class="koleksi">
            <div class="row row-cols-2 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-lg-5">

                @foreach($mini as $mini)
                <x-post-card :post="$mini" />
                @endforeach

            </div>
        </div>
    </section>

    @endif

    <!-- --------------------------------------awalnya------------------------------------------ -->
    @else
    <div class="section-shop">
        <div class="container">
            <div class="row">
                <div class="col-6 col-sm-5 col-md-4 col-xl-3 d-flex justify-content-start">
                    <h2>Mini Souvenir</h2>
                </div>
                <div class="col-2 col-sm-3 col-md-4 col-xl-3 d-flex justify-content-start">
                    <h3></h3>
                </div>
                <div class="col-4 col-sm-4 col-md-4 col-xl-6 d-flex justify-content-end">
                    <a href="/posts?categories=mini-souvenir">lihat semua</a>
                </div>
            </div>
        </div>
    </div>

    <section id="shop" class="shop">
        @if($posts_mini->count() )
        <div class="row row-cols-2 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-lg-5">

            @foreach($posts_mini as $posts_mini)
            <x-post-card :post="$posts_mini" />
            @endforeach

        </div>
        @else
        
        <div class="section-product">
            <div class="row">
                <div class="col-3">
                    <div class="fest-img d-flex justify-content-center pulse"><img src="img/no-product.png"></div>
                </div>
                <div class="col-9" style="margin-top: 7%;">
                    <h5 class="d-flex justify-content-start">Belum ada Produk Disini!</h5>
                    <p class="d-flex justify-content-start">Nantikan produk-produk menarik dari Sorak Sorai, dijamin mantapp</p>
                </div>
            </div>
        </div>
        @endif
    </section>
    @endif

    <!-- --------------------------------------end------------------------------------------ -->

    @else
    <section id="nullable" class="nullable mt-5">
        <div class="container" data-aos="fade-up">
            <div class="row justify-content-center text-center">
                <div class="col-8 col-md-7 col-lg-6">

                    <div class="section-penampil mt-5">
                        <div class="fest-img-shop d-flex justify-content-center pulse"><img src="img/no-product.png"></div>
                        <h5>Maaf, Tidak ada Produk Disini!</h5>
                        <p>Nantikan produk-produk menarik dari Sorak Sorai, dijamin mantapp</p>
                    </div>

                </div>
            </div>
        </div>
    </section>


    @endif

    @endsection