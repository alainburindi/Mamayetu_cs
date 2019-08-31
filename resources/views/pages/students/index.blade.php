<?php use App\User; ?>

@extends('layouts.app')
@section('content')
<a class="btn btn-primary col-lg-12" href="students/create">new student</a><p></p>
	@if(count($students) > 0)
	{!! Form::open(['action' => 'PagesController@studentsearch', 'method' => 'POST', 'enctype' => 'multipart/form-data'] ) !!}
		@csrf
		<div style="color:red" class="color:mediumblue input-group mt-3 mb-3 color:mediumblue">
			
			<div style="" class="input-group-prepend color:mediumblue">
		    	{{Form::select('choix', [ 'M' => 'Matricule', 'N' => 'Nom'],'',['class' => 'form-control'])}}
		  	</div style="">
				{{Form::text('data', '',['class' => 'form-control', 'placeholder' => 'search'])}}
			{{Form::submit('Search',['class' => 'btn btn-primary'])}}
	   

		</div>
	{!! Form::close() !!}
		@foreach($students as $student)
		<div class="ro colo-lg-12">
			<div class="well">
				<h3><a href="/students/{{$student->id}}">{{$student->matricule}}</a></h3>
				<p>Student name : {{User::find($student->user_id)->name}}</p>
				
			</div>
			<div class="float-right">
				<a href="students/{{$student->id}}/edit"><button class="btn btn-outline-primary">Edit</button></a>
				<a href="/marks/{{$student->id}}"><button href="ddd" class="btn btn-success">Points</button></a>
				<a href="#"><button class="btn btn-outline-danger">Delete</button></a>
			<a href="/payments/{{$student->id}}"><button class="btn btn-danger">Payment</button></a>
				
				
			</div>
		</div>
		@endforeach
		{{$students->links()}}
	@else

		<p>no student recorded</p>	
		<a href="students/create" class="btn btn-primary">Add a student</a>
	@endif
@endsection