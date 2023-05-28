@extends('layouts.app')

@section('content') <div class="container">
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">{{ $bookData->book->title }}</h5>
            <p class="card-text">{{ @$bookData->book->description }}</p>
            <p class="card-text">Price: Rs.{{ $bookData->book->price }}</p>
            <p class="card-text">Category: {{ $bookData->book->category->name }}</p>
            <p class="card-text">{{ $bookData->author->name }}</p>
            @auth
            <a href="javascript:void(0)" data-id="{{ $bookData->book->id }}" id="submitYourReview" class="btn btn-outline-primary">Submit Your Review</a>
            @else
            <a href="{{ route('login') }}" class="btn btn-outline-primary">Submit Your Review</a>
            @endauth
            <h6 class="card-subtitle mt-3 mb-4 text-muted">User Reviews</h6>
            @if (count($bookData->book->review) > 0)
            <?php
            $numberOfReviews = 0;
            $totalStars = 0;
            $average = 0;
            ?>
            @foreach ($bookData->book->review as $review)
            <div class="media mt-2 mb-4">
                <div class="media-body">
                    <h6>Name : {{ $review->user->name }}</h6>
                    <p>Review : {{ $review->review }}</p>
                    <p class="text-muted">Rating : {{ $review->rating }}</p>
                </div>
            </div>

            <?php
            $numberOfReviews++;
            $totalStars += $review['rating'];
            ?>
            @endforeach
            <?php
            $average = $totalStars / $numberOfReviews;
            ?>
            <hr>
            <h6 class="card-subtitle mb-2 text-muted">Average Rating</h6>
            <div class="text-muted">
                <span class="mr-2">Rating: <span>{{ round($average,2) }}</span></span>
            </div>

            @else
            <h3>No Review Found!</h3>
            @endif
        </div>
        <div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div id="mediumBody"></div>
                </div>
            </div>
        </div>

    </div>
</div>
@endsection
@section('js')
<script>
    $(document).on('click', '#submitYourReview', function() {

        var id = $(this).attr('data-id');
        console.log(id);

        $.ajax({
            type: 'GET',
            data: {
                id: id
            },
            url: "{{ route('reveiw-model') }}",
            cache: true,
            beforeSend: function() {},
            success: function(response) {
                if (response.success) {
                    $('#mediumBody').html(response.modal);
                    $('#mediumModal').modal('show');
                }
            },
            complete: function() {},
            error: function() {
                alert('Sorry!');
            }
        });
    });
</script>
@endsection