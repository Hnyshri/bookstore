<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BookAuthor extends Model
{
    use HasFactory;

    protected $fillable = [
        'book_id',
        'author_id'
    ];

    public function book()
    {
        return $this->hasOne(Book::class, 'id', 'book_id');
    }

    public function author()
    {
        return $this->hasOne(Author::class, 'id', 'author_id');
    }
}
