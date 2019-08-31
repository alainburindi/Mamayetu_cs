<?php

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

Route::get('/', 'PagesController@index');

Route::get('/about', 'PagesController@about');

// Route::get('/inscription', 'PagesController@inscription');

Route::get('/contacts', 'PagesController@contacts');

Route::get('/sections', 'PagesController@sections');


Route::resource('inscription', 'InscriptionController');

Route::resource('classes', 'ClassesController');

Route::resource('courses', 'CoursesController');

Route::resource('events', 'EventsController');


Route::get('/bull', 'PagesController@bull');

Route::get('/class', 'PagesController@class');

Route::get('/eleves/{id}', 'PagesController@eleves');

Route::resource('marks', 'MarksController');


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('students', 'StudentsController');

Route::post('/search', 'PagesController@studentsearch');

Route::get('/ok', 'PagesController@refresh');



Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::resource('payments', 'PaymentsController');

Route::get('/byclass/{id}', 'PagesController@by');

Route::post('/criteria', 'PagesController@byCriteria');

