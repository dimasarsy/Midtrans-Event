@extends('dashboard.layouts.app')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2"><i class="fas fa-fw fa-music"></i> Edit Performance</h1>
</div>
<div class="card shadow mb-4">
    <div class="col-lg-10">
        <div class="card-body">
            <form action="/dashboard/lineups/{{ $lineup->slug }}" method="POST" novalidate enctype="multipart/form-data">
                
                @method('PUT')
                @csrf
                <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input id="name" name="name" type="text" class="form-control @error('name') is-invalid @enderror"  value="{{ old('name', $lineup->name) }}" autofocus>
                    @error('name') <div class="invalid-feedback">{{ $message }}</div> @enderror
                </div>
                <div class="mb-3">
                    <label for="slug" class="form-label">Slug</label>
                    <input id="slug" name="slug" type="text" readonly autocomplete="slug" class="form-control @error('slug') is-invalid @enderror" value="{{ old('slug', $lineup->slug) }}">
                    @error('slug') <div class="invalid-feedback">{{ $message }}</div> @enderror
                    <small class="text-gray-500 font-medium block my-2">Auto generate after you filled field name and click tab.</small>
                </div>

                <div class="mb-3">
                    <label for="schedules" class="block text-sm font-medium text-gray-700 mb-2">schedules</label>
                    <select id="schedules" name="schedule_id" autocomplete="schedules-name" class="form-select form-select-sm">
                        @foreach($schedules as $schedule)
                            @if( old('schedule_id', $lineup->schedule_id) == $schedule->id)
                            <option selected value="{{ $schedule->id }}">{{ $schedule->name }}</option>
                            @else
                           <option value="{{ $schedule->id }}">{{ $schedule->name }}</option>
                           @endif
                        @endforeach
                    </select>
                </div>

                <div class="mb-3">
                    <label for="date">Schedule Date</label>
                    <input type="date" class="form-control @error('date') is-invalid @enderror" id="date"
                        placeholder="Date" name="date" value="{{ old('date', $lineup->date) }}">
                    @error('date')
                    <div class="invalid-feedback mb-3">
                        {{ $message }}
                    </div>
                    @enderror
                </div>

                <div class="mb-3">
                    <label for="starttime">Start Time</label>
                    <input type="time" class="form-control @error('starttime') is-invalid @enderror" id="starttime"
                        placeholder="starttime" name="starttime" value="{{ old('starttime', $lineup->starttime) }}">
                    @error('starttime')
                    <div class="invalid-feedback mb-3">
                        {{ $message }}
                    </div>
                    @enderror
                </div>

                <div class="mb-3">
                    <label for="endtime">End Time</label>
                    <input type="time" class="form-control @error('endtime') is-invalid @enderror" id="endtime"
                        placeholder="endtime" name="endtime" value="{{ old('endtime', $lineup->endtime) }}">
                    @error('endtime')
                    <div class="invalid-feedback mb-3">
                        {{ $message }}
                    </div>
                    @enderror
                </div>
            
                <label for="image" class="form-label">Image</label>
                <div class="mb-3">
                    <input type="hidden" name="old-image" value="{{ $lineup->image }}">
                    @if($lineup->image)
                    <img class="rounded-md border border-gray-200 hidden mb-3 overflow-hidden" id="img-preview" src="{{ asset('storage/' . $lineup->image) }}" alt="">
                    @else
                    <img class="rounded-md border border-gray-200 hidden mb-3 overflow-hidden" id="img-preview" alt="">
                    @endif
                    <input id="image" name="image" type="file" class="form-control @error('image') is-invalid @enderror" onchange="previewImage();">
                    @error('image')<div class="invalid-feedback">{{ $message }}</div>@enderror
                </div>
            
                <div class="mb-3">
                    <label for="information" class="form-label">Content</label>
                    <input id="information" type="hidden" name="information" class="form-control @error('information') is-invalid @enderror" value="{{ old('information', $lineup->information) }}">
                    <trix-editor input="information"></trix-editor>
                    @error('information')<div class="invalid-feedback">{{ $message }}</div>@enderror
                </div>
            
                <button type="submit" class="btn btn-primary mb-5">Update Performance</button>
            </form>
        </div>
    </div>
</div>



<script>

    const name = document.getElementById('name');
    const slug = document.getElementById('slug');

    name.addEventListener('change', async function() {
        const res = await fetch(`/dashboard/lineups/slug?${
            new URLSearchParams({name: this.value})
            .toString()
        }`);
        const data = await res.json();
        slug.value = data.slug;
    });

    document.addEventListener('trix-file-accept', function(e){
        e.preventDefault();
    })

    function previewImage(){
        const image = document.querySelector('#image');
        const imgPreview = document.querySelector('.img-preview');

        imgPreview.style.display = 'block';

        const oFReader = new FileReader();
        oFReader.readAsDataURL(image.files[0]);

        oFReader.onload = function(oFREvent){
            imgPreview.src = oFREvent.target.result;
        }
    }

</script>
@endsection