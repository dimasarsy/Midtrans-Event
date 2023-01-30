@extends('layouts.app')

@section('container')

<section id="schedule" class="schedule">

    <div class="section-schedule mb-5 d-flex justify-content-center">
        <h2 data-aos="fade-right">Profil Saya</h2>
    </div>

    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
        <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z" />
        </symbol>
        <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
            <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z" />
        </symbol>
        <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
            <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
        </symbol>
    </svg>

    @if(session('success'))
    <div class="alert alert-success alert-dismissible fade show col-4 d-flex justify-content-center" role="alert">
        <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:">
            <use xlink:href="#check-circle-fill" />
        </svg>
        {{ session('success') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    @endif

    @if(session('noUpdate'))
    <div class="alert alert-danger alert-dismissible fade show col-4 d-flex justify-content-center" role="alert">
        <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:">
            <use xlink:href="#exclamation-triangle-fill" />
        </svg>
        {{ session('noUpdate') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    @endif


    <div class="row row-cols-2 row-cols-sm-1">
        @foreach ($users as $user)
        <div class="d-flex justify-content-center" data-aos="fade-up" data-aos-delay="100">
            <div class="bingkai">

                <div class="row">
                    <div class="col-12 col-sm-4 col-md-4 col-lg-3 col-xl-3 d-flex justify-content-center">

                        @if(Auth::user()->photo == "default.png")
                        <img class="img-fluid rounded-start" src="../../../img/default.png">
                        @else
                        <img class="img-fluid rounded-start" src="{{ asset('storage/' . Auth::user()->photo) }}">
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