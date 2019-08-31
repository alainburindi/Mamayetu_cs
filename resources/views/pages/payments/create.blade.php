<?php use App\Student; ?>
@extends('layouts.app')
@section('content')
	<h3>Add new payment record</h3>
	
	<div class="form well">
		<?php $matricule = ""; ?>
		{!! Form::open(['action' => 'PaymentsController@store', 'method' => 'POST'] ) !!}
		@csrf
		<div class="form-group">
    		{{Form::label('Nom :', 'Nom')}}
    		{{Form::number('amount', '',['class' => 'form-control', 'placeholder' => '0000'])}}
    	</div>

        <div class="form-group">
            {{Form::label('max', 'student')}}
            <select name="student_id" required class="form-control">
                <option for="" disabled="" selected="">Choose the student</option>
                @foreach($classes->all() as $class)
                        <option value="{{$class->id}}">{{$class->matricule}}</option>                
                @endforeach
                
            </select>
        </div>

    	{{Form::submit('Submit',['class' => 'btn btn-primary'])}}
    	{!! Form::close() !!}
	</div>
@endsection