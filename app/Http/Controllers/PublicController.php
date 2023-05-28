<?php

namespace App\Http\Controllers;

use App\Models\BookAuthor;
use Illuminate\Http\Request;

class PublicController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $booksData = BookAuthor::with('book', 'book.category', 'author')->get();
        return view('welcome', compact('booksData'));
    }

    public function bookDetails(Request $request, $id)
    {

        $bookData = BookAuthor::whereId($id)->with('book.category', 'author', 'book.review.user')->first();
        if (!isset($bookData)) {
            abort(404);
        }

        return view('bookDetail', compact('bookData'));
    }
}
