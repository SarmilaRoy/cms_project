@extends('admin.layout')

@section('content')
    <h2>Post Details</h2>

    @if (session()->has('message'))
        <div class="alert alert-dismissible" style="color: red;">
            {{ session('message') }}
        </div>
    @endif

    {{-- delete msg --}}
    @if(Session::has('msg'))
    <p class="alert alert-success">{{ Session::get('msg') }}</p>
    @endif
    <div class="navbar-right">
        <a href="{{ route('post-add') }}" class="btn btn-primary">Add new</a>

    </div>


    <table class="table table-bordered">
        <thead>
            <tr>
                <th>SL No.</th>
                <th>Page</th>
                <th>Section Title</th>
                <th>Post Title</th>
                <th>Image</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($posts as $key => $post)
                <tr>
                    <td>{{ $key + 1 }}</td>
                    <td>{{ $post->page_title }}</td>
                    <td>{{ $post->section_title }}</td>
                    <td>{{ $post->title }}</td>
                    <td><img src="public/uploads/{{ $post->image }}" style="width: 50px;height: 50px;"></td>
                    <td>
                        <a href="{{ route('edit-post') }}/{{ $post->id }}" class="btn btn-success btn-xs"><i
                                class="fa   fa-pencil"></i></a>
                        {{-- <a href=""  class="btn btn-danger btn-xs deletepost" image="{{ $post ->image }}" post_id="{{ $post     ->id }}"><i class="fa fa-trash"></i></a> --}}

                        {{-- <a onclick="return confirm('Are you sure to delete this !')" class="btn btn-danger"
                                        href="{{ route('post-delete', $post->id) }}">Delete</a> --}}

                        <a href="{{ url('/post-delete') }}/{{ $post->id }} "   class="btn btn-danger btn-xs" onclick="return confirm('are you sure to delete?')">
                            <i class="fa fa-trash"></i></a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <h2>{{ $posts->links() }}</h2>
@endsection


@push('footer-script')
    {{-- <script>
        $(document).ready(function() {
            $(document).on("click", ".deletepost", function() {
                var id = $(this).attr('post_id');
                var image = $(this).attr('image');
                if (confirm('Are you sure want to delete this post with all data..?')) {
                    $.ajax({
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        url: '{{ route('post-delete') }}',
                        data: {
                            "id": id,
                            'image': image
                        },
                        type: 'post,',
                        success: function(data) {
                            if (data == true) {
                                alert('Post Deleted Successfully');
                            } else {
                                alert(data)
                            }
                            window.location.reload();
                        }
                    });
                }
            });

        });
    </script> --}}
@endpush
