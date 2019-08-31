<?php use Illuminate\Support\Facades\DB;
	use App\Professor;
	use App\Student;
?>

@extends('layouts.app')

@section('content')

<div class="well">
	<div class="row">
		class id : {{$c->id}}
	</div> 
	<div class="row">
		class year : {{$c->name}}
	</div>
	<div class="row">
		class option : {{$c->option}}
	</div>

	<div class="row">
		class titulaire : {{Professor::find($c->titulaire)->name}}
	</div>

	<div class="row">
		class students number : {{count(Student::where('t__class_id', $c->id)->get())}}
	</div>
	
</div>

@include('layouts.footer')
@endsection