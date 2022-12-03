@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-lg-12 mx-auto">
                <h2>Company Lists</h2>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name </th>
                            <th scope="col">Email</th>
                            <th scope="col">Logo </th>
                            <th scope="col">Website Link</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data as $key => $item)
                            <tr>
                                <th>{{ ++$key }}</th>
                                <td>{{ $item->name }}</td>
                                <td>{{ $item->email }}</td>
                                <td><img src="{{ $item->logo_url }}" alt="" style="max-width:100px;"></td>
                                <td>{{ $item->website }}</td>
                                <td>
                                    <a href="{{ route('edit.company', $item->id) }}" class="btn btn-success"><i
                                            class="fa-regular fa-pen-to-square"></i></a>
                                    <button class="btn btn-danger button"><i class="fa-regular fa-trash-can"></i></button>
                                    <form action="{{ route('delete.company', $item->id) }}" method="post"
                                        class="d-inline-block">
                                        @csrf
                                        @method('DELETE')

                                    </form>

                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                <div>
                    <span> {{ $data->links() }}</span>
                </div>
            </div>

        </div>
    </div>

    @push('js')
        <script>
            let button = $('.button')
            button.on('click', function() {
                let form = $(this).next('form')
                const swalWithBootstrapButtons = Swal.mixin({
                    customClass: {
                        confirmButton: 'btn btn-success',
                        cancelButton: 'btn btn-danger'
                    },
                    buttonsStyling: false
                })

                swalWithBootstrapButtons.fire({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonText: 'Yes, delete it!',
                    cancelButtonText: 'No, cancel!',
                    reverseButtons: true
                }).then((result) => {
                    if (result.isConfirmed) {
                        swalWithBootstrapButtons.fire(
                            'Deleted!',
                            'Your file has been deleted.',
                            'success'
                        )
                        form.submit()
                    } else if (
                        /* Read more about handling dismissals below */
                        result.dismiss === Swal.DismissReason.cancel
                    ) {
                        swalWithBootstrapButtons.fire(
                            'Cancelled',
                            'Your imaginary file is safe :)',
                            'error'
                        )
                    }
                })
            })
        </script>
    @endpush
@endsection
