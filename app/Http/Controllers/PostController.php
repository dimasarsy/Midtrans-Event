<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\User;
use App\Models\categories;
use App\Models\Pengajuan;

use App\Http\Controllers\Controller;

class PostController extends Controller
{
    public function index()
    {
        $categories = null;
        if (request('categories')) {
            $categories = categories::firstWhere('slug', request('categories'));
        }
        
        $posts = Post::with(["author", "categories"])
            ->latest()
            ->get();

        $pakaian = Post::with(["author", "categories"])
            ->latest()
            ->where('posts.categories_id', '1')
            ->get();

        $posts_pakaian = Post::with(["author", "categories"])
            ->latest()
            ->where('posts.categories_id', '1')
            ->limit(5)
            ->get();
        
        $atk = Post::with(["author", "categories"])
            ->latest()
            ->where('posts.categories_id', '2')
            ->get();

        $posts_atk = Post::with(["author", "categories"])
            ->latest()
            ->where('posts.categories_id', '2')
            ->limit(5)
            ->get();    
        $rumah = Post::with(["author", "categories"])
            ->latest()
            ->where('posts.categories_id', '3')
            ->get();

        $posts_rumah = Post::with(["author", "categories"])
            ->latest()
            ->where('posts.categories_id', '3')
            ->limit(5)
            ->get();    
        $mini = Post::with(["author", "categories"])
            ->latest()
            ->where('posts.categories_id', '4')
            ->get();

        $posts_mini = Post::with(["author", "categories"])
            ->latest()
            ->where('posts.categories_id', '4')
            ->limit(5)
            ->get();    

        return view('posts.posts', [
            "title" => "Marketplace",
            "categories"  => $categories,

            "posts" => $posts,

            "posts_pakaian" => $posts_pakaian,
            "pakaian" => $pakaian,
            "posts_atk" => $posts_atk,
            "atk" => $atk,
            "posts_rumah" => $posts_rumah,
            "rumah" => $rumah,
            "posts_mini" => $posts_mini,
            "mini" => $mini,
            'users' => User::query()->latest()->get()
        ]);
    }

    public function show(Post $post)
    {
        return view('posts.post', [
            "title" => "Marketplace",
            "post"  => $post
        ]);
    }

    public function postsByUser(User $author)
    {
        return view('posts.posts-by-user', [
            "posts" => $author->posts->load('author', 'categories'),
            "user"  => $author,
            "title" => "Marketplace",
        ]);
    }
}
