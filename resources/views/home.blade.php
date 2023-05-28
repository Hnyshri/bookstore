@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Reviews') }}</div>

                <div class="card-body">
                    @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Category</th>
                                <th scope="col">Book Name</th>
                                <th scope="col">Rating</th>
                                <th scope="col">Price</th>
                                <th scope="col">Review</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($review as $bookItem)
                            <tr>
                                <th scope="row">{{ @$bookItem->book->category->name }}</th>
                                <td>{{ @$bookItem->book->title }}</td>
                                <td>{{ @$bookItem->rating }}</td>
                                <td>{{ @$bookItem->book->price }}</td>
                                <td>{{ @$bookItem->review }}</td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <!-- {!! $review->links() !!} -->
                </div>
            </div>
        </div>
    </div>
</div>
@endsection