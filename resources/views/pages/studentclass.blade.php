<?php use App\User; ?>
@extends('layouts.app')
@section('content')
	<div class="row">
		
		{{-- {{$class->id}}
		{{$class->name.' '. $class->option}}
		{{$class->titulaire}} --}}
	</div>
	@if(count($students) > 0)
		@foreach($students as $student)
			<div class="well">
				<h3><a href="/students/{{$student->id}}">{{$student->matricule}}</a></h3>
				<p>Student name : {{User::find($student->user_id)->name}}</p>
			</div>
		@endforeach
	@else
	<p>
		<br>
		no student recorderd yet
	</p>
	@endif
@include('layouts.footer')
@endsection