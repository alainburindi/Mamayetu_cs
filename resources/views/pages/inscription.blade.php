@extends('layouts.app')

@section('content')

	<h3>Add new student</h3>
	
	<div class="form well">
		{!! Form::open(['action' => 'InscriptionController@store', 'method' => 'POST', 'enctype' => 'multipart/form-data'] ) !!}
        @csrf
		<div class="form-group">
    		{{Form::label('Nom :', 'Nom')}}
    		{{Form::text('nom', '',['class' => 'form-control', 'placeholder' => 'nom'])}}
    	</div>
    	<div class="form-group">
    		{{Form::label('Post-nom', 'Post-nom')}}
    		{{Form::text('postNom', '',['class' => 'form-control', 'placeholder' => 'student name'])}}
    	</div>

    	<div class="form-group">
    		{{Form::label('Pre-nom', 'Pre-nom')}}
    		{{Form::text('preNom', '',['class' => 'form-control', 'placeholder' => 'Pre-nom'])}}
    	</div>

    	<div class="form-group">
    		{{Form::label('', 'Date de naissance')}}
    		{{Form::date('naissance', '',['class' => 'form-control', 'placeholder' => 'n'])}}
    	</div>

        <div class="form-group">
        	{{Form::label('section', 'Section et/ou option', ['class' => 'label'])}}
            {{Form::select('section',[
			    'Maternelle' => 'Maternelle', 'Primmaire' => 'Primmaire',
			    'Secondaire' => ['Orientation' => 'C.O', 'Commerciale' => 'C.G', 'Sociale' => 'H.T.S',
			    'Pedagogie' => 'PEDAGOGIE GENERALE', 'Nutrition'=> 'NUTRITION']],'', ['class' => 'form-control'])}}
        </div>

        <div class="form-group">
        	{{Form::label('sex', 'Sexe')}}
        	{{Form::select('sexe', [ 'M' => 'Masculin', 'F' => 'Feminin'],'',['class' => 'form-control'])}}
        </div>

    	{{Form::submit('Submit',['class' => 'btn btn-primary'])}}
    	{!! Form::close() !!}
	</div>
    	
    	
		


@include('layouts.footer')
@endsection