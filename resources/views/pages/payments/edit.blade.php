<?php use App\Student; ?>
@extends('layouts.app')
@section('content')
	<h3>Edit a payment record</h3>
	<div class="form well">
		<?php $matricule = ""; ?>
		{!! Form::open(['action' => ['PaymentsController@update', $pay->id], 'method' => 'POST'] ) !!}
		@csrf
		<div class="form-group">
    		{{Form::label('Nom :', 'Amount')}}
    		{{Form::number('amount', $pay->amount,['class' => 'form-control', 'placeholder' => '0000'])}}
    	</div>

        <div class="form-group">
            {{Form::label('max', 'student')}}
            {{Form::select('student_id', [ $pay->student_id =>Student::find($pay->student_id)->matricule],'',['class' => 'form-control'])}}
        </div>
        {{Form::hidden('_method', 'PUT')}}
    	{{Form::submit('Submit',['class' => 'btn btn-primary'])}}
    	{!! Form::close() !!}
	</div>
@endsection