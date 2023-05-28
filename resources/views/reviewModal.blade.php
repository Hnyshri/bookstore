<div class="modal-header">
    <h5 class="modal-title" id="exampleModalLabel">Submit Review</h5>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<form class="form-horizontal" method="POST" action="{{ route('reveiw-model-submit') }}">
    {{ csrf_field() }}
    <div class="modal-body">
        <div class="form-group">
            <input type="hidden" value="{{ $bookData->book_id}}" name="book_id">
            <input type="hidden" value="{{ $bookData->author_id}}" name="author_id">
            <label for="recipient-name" class="col-form-label">Rating:</label>
            <select class="form-select" name="rating" required>
                <option value="1" selected>One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
                <option value="4">Four</option>
                <option value="5">Five</option>
            </select>
        </div>
        <div class="form-group">
            <label for="message-text" class="col-form-label">Message:</label>
            <textarea class="form-control" name="message" id="message-text" required></textarea>
        </div>

    </div>
    <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Send</button>
    </div>
</form>