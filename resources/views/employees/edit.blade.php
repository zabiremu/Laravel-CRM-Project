@extends('layouts.app')

@section('content')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <div class="container">
        <div class="row">
            <h2>Edit Employees Data</h2>
            <form action="{{ route('update.employ', $data->id) }}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="mb-3 d-inline-block me-3" style="width: 49%">
                    <label for="fname" class="form-label">First Name</label>
                    <input type="text" class="form-control" id="fname" placeholder="First Name" name="fname" value="{{ $data->first_name }}">
                    <span class="text-danger py-3">
                        @error('fname')
                            {{ $message }}
                        @enderror
                    </span>
                </div>
                <div class="mb-3 d-inline-block" style="width: 49%">
                    <label for="lname" class="form-label">Last Name</label>
                    <input type="text" class="form-control" id="lname" placeholder="Last Name" name="lname" value="{{ $data->last_name }}">
                    <span class="text-danger py-3">
                        @error('lname')
                            {{ $message }}
                        @enderror
                    </span>
                </div>

                <div class="mb-3">
                    <label for="Email" class="form-label">Company Name</label>
                    <select class="form-select" aria-label="Default select example" name="company_name">
                        <option selected disabled>Select Company</option>
                        @foreach ($companyName as $name)
                            <option value="{{ $name->id }}" {{ $name->id == $data->company_id ? 'selected' : '' }}>{{ $name->name }}</option>
                        @endforeach
                    </select>
                    <span class="text-danger py-3">
                        @error('company_name')
                            {{ $message }}
                        @enderror
                    </span>
                </div>

                <div class="mb-3">
                    <label for="Email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="Email" placeholder="Email" name="email" value="{{ $data->email }}">
                    <span class="text-danger py-3">
                        @error('email')
                            {{ $message }}
                        @enderror
                    </span>
                </div>
                <div class="mb-3">
                    <label for="PNumber" class="form-label">Phone Number</label>
                    <input type="number" class="form-control" id="PNumber" placeholder="Phone Number" name="PhoneNumber" value="{{ $data->phone }}">
                    <span class="text-danger py-3">
                        @error('PhoneNumber')
                            {{ $message }}
                        @enderror
                    </span>
                </div>
                <div class="mb-3">
                    <button class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
    @push('js')
    @endpush
@endsection
