@extends('layouts.app')

@section('content')
<div class="container">
    <div class="content">
        <div class="row mt-5">
            <div class="col-sm-12">
                <h2>Books</h2>
            </div>
        </div>

        <div class="row">
            @foreach ($booksData as $bookItem)
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <a href="{{ route('book-details',['id'=>$bookItem->book_id]) }}">
                            <h5 class="card-title">{{ $bookItem->book->title }}</h5>
                        </a>
                        <p class="card-text">{{ @$bookItem->book->description }}</p>
                        <p class="card-text">Price: Rs.{{ @$bookItem->book->price }}</p>
                        <p class="card-text">Category: {{ $bookItem->book->category->name }}</p>
                        <p class="card-text">{{ @$bookItem->author->name }}</p>
                    </div>
                </div>
            </div>
            @endforeach
        </div>

    </div>
</div>
@endsection