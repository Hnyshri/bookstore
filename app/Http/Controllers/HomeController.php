<?php

namespace App\Http\Controllers;

use App\Jobs\TestEmailJob;
use App\Models\Author;
use App\Models\Book;
use App\Models\BookAuthor;
use App\Models\Review;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $review = Review::where('user_id', Auth::id())->with('book', 'book.category')->paginate(25);
        return view('home', compact('review'));
    }


    public function reveiwModel(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $bookData = BookAuthor::whereId($id)->first();
            $modal = view('reviewModal')->with('bookData', $bookData)->render();
            return response()->json(['success' => true, 'modal' => $modal], 200);
        }
    }

    public function reveiwModelSubmit(Request $request)
    {
        try {
            $review = new Review();
            $review->book_id = $request->book_id;
            $review->rating = $request->rating;
            $review->user_id = Auth::id();
            $review->review = $request->message;
            $review->save();

            $isAuthor = Author::whereId($request->author_id)->first();
            $bookData = Book::whereId($request->book_id)->with('category')->first();

            $data = [];
            $data['mail'] = $isAuthor->email;
            $data['author'] = $isAuthor;
            $data['review'] = $review;
            $data['book'] = $bookData;

            dispatch(new TestEmailJob($data));


            // Mail::send('frontend.user.mail_template._phd_template', $data, function ($message) use ($data) {
            //     $message->from('noreply@virtex.in', $data['event']['name']);
            //     $message->subject($data['event']['name']);
            //     $message->to($data['mail']);
            // });

            return redirect()->route('home')->withFlashSuccess('Review is successfully added.');
        } catch (\Exception $e) {
            return redirect()->back()->withFlashDanger('Some thing went wrong:- ' . $e->getMessage());
        }
    }
}
