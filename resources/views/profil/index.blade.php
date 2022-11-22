@extends('layouts.app')

@section('container')

<section id="schedule" class="schedule">
    <div class="section-schedule mb-5 d-flex justify-content-center">
        <h2 data-aos="fade-right">Profil Saya</h2>
    </div>


    <div class="row row-cols-2 row-cols-sm-1">
        @foreach ($users as $user)
            <div class="d-flex justify-content-center" data-aos="fade-up" data-aos-delay="100">
                <div class="bingkai">

                    <div class="row">
                        <div class="col-12 col-sm-4 col-md-4 col-lg-3 col-xl-3 d-flex justify-content-center">

                            @if(Auth::user()->photo == "default.png")
                            <img class="img-fluid rounded-start"src="../../../img/default.png">
                            @else
                            <img class="img-fluid rounded-start"src="{{ asset('storage/' . Auth::user()->photo) }}">
                            @endif
                        </div>

                        <div class="col-12 col-sm-8 col-md-8 col-lg-9 col-xl-9">

                            <div class="card-body">
                                <div class="row">
                                    <h5 class="card-title" style="color: #FF50E3;">{{ $user->name }}</h5>
                                </div>

                                <div class="row date-time">
                                    <div class="col-12 col-sm-12 col-lg-12">
                                        <p class="card-date"><i class="fas fa-user-alt"></i>&nbsp;&nbsp;&nbsp; {{ $user->username }}</p>
                                        <p class="card-date"><i class="fa fa-envelope"></i>&nbsp;&nbsp;&nbsp; {{ $user->email }}</p>
                                        <p class="card-date"><i class="fas fa-lock"></i>&nbsp;&nbsp;&nbsp; *******</p>
                                    </div>
                                </div>
                                
                                <div class="col-12 col-sm-2 col-md-2">
                                    <a href="/edit-profil" class="btn card-btn" style="color: black;"><span><i class="fas fa-edit"></i>&nbsp;&nbsp;Edit</span></a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        @endforeach

    </div>
</section>

@endsection