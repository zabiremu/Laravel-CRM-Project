@extends('layouts.app')

@section('content')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <div class="container">
        <div class="row">
            <h2>Create Company</h2>
            <form action="{{ route('store.company') }}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="mb-3">
                    <label for="Name" class="form-label">Name</label>
                    <input type="text" class="form-control" id="Name" placeholder="Name" name="name">
                    <span class="text-danger py-3">
                        @error('name')
                            {{ $message }}
                        @enderror
                    </span>
                </div>
                <div class="mb-3">
                    <label for="Email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="Email" placeholder="Email" name="email">
                    <span class="text-danger py-3">
                        @error('email')
                            {{ $message }}
                        @enderror
                    </span>
                </div>
                <div class="mb-3">
                    <label for="link" class="form-label">Website Link</label>
                    <input type="text" class="form-control" id="link" placeholder="Website Link" name="link">
                    <span class="text-danger py-3">
                        @error('link')
                            {{ $message }}
                        @enderror
                    </span>
                </div>
                <div class="mb-3">
                    <label for="logo" class="form-label">Logo</label>
                    <input type="file" class="form-control" id="image" name="logo">
                    <span class="text-danger py-3">
                        @error('logo')
                            {{ $message }}
                        @enderror
                    </span>
                </div>
                <div class="row mb-3">
                    <div class="">
                        <label for="logo"></label>
                    </div>
                    <div class="col-sm-9 text-secondary">
                        <img id="show_image" src="{{ asset('storage/No-Image-Placeholder.svg.png') }}" alt=""
                            width="100" style="border-radius: 50%">
                    </div>
                </div>
                <div class="mb-3">
                    <button class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
    @push('js')
        <script type="text/javascript">
            $(document).ready(function() {
                $('#image').change(function(e) {
                    var reader = new FileReader();
                    reader.onload = function(e) {
                        $('#show_image').attr('src', e.target.result);
                    }
                    reader.readAsDataURL(e.target.files['0'])
                })
            })
        </script>
    @endpush
@endsection
