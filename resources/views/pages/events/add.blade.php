@extends ('layouts.app')
@section('content')
{!! Form::open(['action' => 'EventsController@store', 'method' => 'POST', 'enctype' => 'multipart/form-data'] ) !!}
		@csrf
		<div class="form-group">
    		{{Form::label('Nom :', 'Nom')}}
    		{{Form::text('nom', '',['class' => 'form-control', 'placeholder' => 'nom'])}}
    	</div>
    	<div class="form-group">
    		{{Form::label('Post-nom', 'Description')}}
    		{{Form::textArea('description', '',['class' => 'form-control', 'placeholder' => 'description'])}}
    	</div>
        <div class="form-group">
            {{Form::file('event_pic', ['class' => 'form-control, btn-outline-success'])}}
        </div>

    	{{Form::submit('Submit',['class' => 'btn btn-primary'])}}
    	{!! Form::close() !!}

@endsection