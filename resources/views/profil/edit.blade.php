@extends('layouts.app')

@section('container')


<section id="schedule" class="schedule">
    <div class="section-schedule mb-5 d-flex justify-content-center">
        <h2 data-aos="fade-right">Edit Profil</h2>
    </div>

    <div class="card shadow mb-4">
        <div class="col-lg-10">
            <div class="card-body">
                <form action="{{ route('profil.update') }}" method="POST" novalidate enctype="multipart/form-data">
                    @method('patch')
                    @csrf
                    <div class="mb-3">
                        <label for="name" class="form-label">Name</label>
                        <input id="name" name="name" type="text" class="form-control @error('name') is-invalid @enderror" value="{{ old('name', $user->name) }}" autofocus>
                        @error('name') <div class="invalid-feedback">{{ $message }}</div> @enderror
                    </div>

                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label>
                        <input id="username" name="username" type="text" class="form-control @error('username') is-invalid @enderror" value="{{ old('slug', $user->username) }}" autofocus>
                        @error('username') <div class="invalid-feedback">{{ $message }}</div> @enderror
                    </div>

                    <div class="mb-3">
                        <label for="email-address" class="form-label">Email</label>
                        <input id="email-address" name="email" type="text" class="form-control @error('email') is-invalid @enderror" value="{{ old('slug', $user->email) }}" autofocus>
                        @error('email') <div class="invalid-feedback">{{ $message }}</div> @enderror
                    </div>

                    <label for="photo" class="form-label">Photo Profil</label>
                    <div class="mb-3">
                        <input type="hidden" name="old-image" value="{{ $user->photo }}">
                            @if($user->photo == "default.png")
                            <img class="rounded-md border border-gray-200 hidden mb-3 overflow-hidden" style="width:200px" id="img-preview" src="../../../img/default.png" alt="">
                            @elseif($user->photo)
                            <img class="rounded-md border border-gray-200 hidden mb-3 overflow-hidden" style="width:200px" id="img-preview" src="{{ asset('storage/' . $user->photo) }}" alt="">
                            @endif
                        <input id="photo" name="photo" type="file" class="form-control @error('photo') is-invalid @enderror" onchange="previewImage();">
                        @error('photo')<div class="invalid-feedback">{{ $message }}</div>@enderror
                    </div>

                    <button type="submit" class="butt">Update</button>
                </form>

            </div>
        </div>
    </div>

</section>

<script>

    function previewImage() {
        const photo = document.querySelector('#photo');
        const imgPreview = document.querySelector('.img-preview');

        imgPreview.style.display = 'block';

        const oFReader = new FileReader();
        oFReader.readAsDataURL(photo.files[0]);

        oFReader.onload = function(oFREvent) {
            imgPreview.src = oFREvent.target.result;
        }
    }
</script>
@endsection