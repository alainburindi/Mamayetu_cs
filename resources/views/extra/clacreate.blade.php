@extends ('layouts.app')

@section ('content')
{!! Form::open(['action' => 'ClassesController@store', 'method' => 'Post'] ) !!}

		<div class="form-group">
    		{{Form::label('année :', 'année')}}
    		{{Form::number('nom', '',['class' => 'form-control', 'placeholder' => 'année'])}}
    	</div>

    	<div class="form-group">
        	{{Form::label('section', 'option', ['class' => 'label'])}}
            {{Form::select('option',['C.O' => 'Cycle d\'Orientation', 'H.T.S' => 'Humanité Technique Sociale', 'C.G' => 'Commerciale et Gestion'],'', ['class' => 'form-control'])}}
        </div>
    	{{Form::submit('Submit',['class' => 'btn btn-primary'])}}
{!! Form::close() !!}

@endsection