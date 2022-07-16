<?php

use App\Http\Controllers\BaseController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\ContactController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home',[BaseController::class,'home']);
Route::get('/services',[BaseController::class,'services']);
Route::get('/company',[BaseController::class,'company']);
Route::get('/contact_us',[BaseController::class,'contact_us']);
Route::get('/admin',[AdminController::class,'index'])->name('login');;
Route::post('/admin-login',[AdminController::class,'makeLogin']);
Route::group(['middleware' =>'auth:admin'],function(){
Route::get('/deshboard',[AdminController::class,'deshboard']);
Route::get('/page-add', [Pagecontroller::class,'addPage'])->name('page-add');
Route::post('/page-create', [Pagecontroller::class,'createPage'])->name('page-create');
Route::get('/post-show', [PostController::class,'show'])->name('post-show');
Route::get('/post-add', [PostController::class,'createPost'])->name('post-add');
//Route::post('/post-store', [PostController::class,'store'])->name('post-store');
//Route::get('/post-show', [PostController::class,'show'])->name('post-show');
Route::get('/edit-post/{post_id?}', [PostController::class,'createPost'])->name('edit-post');
Route::post('/post-add/{post_id?}', [PostController::class,'store'])->name('post-store');
Route::get('/post-delete/{id}', [PostController::class,'delete'])->name('post-delete');

//company
Route::get('/company-page-add', [Pagecontroller::class,'ourcommpany'])->name('company.page.add');
//contact
Route::get('/contact-show', [ContactController::class,'show'])->name('admin.contact.show');
//services
Route::get('/services-page-add', [Pagecontroller::class,'ourservices'])->name('services.page.add');


});

Route::post('/contact-add', [ContactController::class,'contact_store'])->name('contact.store');
