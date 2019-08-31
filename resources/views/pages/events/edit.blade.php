@extends ('layouts.app')
@section('content')
{!! Form::open(['action' => ['EventsController@update', $event->id], 'method' => 'POST', 'enctype' => 'multipart/form-data'] ) !!}
		@csrf
		<div class="form-group">
    		{{Form::label('Nom :', 'Nom')}}
    		{{Form::text('nom', $event->event_name,['class' => 'form-control', 'placeholder' => 'nom'])}}
    	</div>
    	<div class="form-group">
    		{{Form::label('Post-nom', 'Description')}}
    		{{Form::textArea('description', $event->event_description,['class' => 'form-control', 'placeholder' => 'post-nom'])}}
    	</div>
        <div class="form-group">
            {{Form::file('event_pic', ['class' => 'form-control, btn-outline-success'])}}
        </div>
        {{Form::hidden('_method', 'PUT')}}
    	{{Form::submit('Submit',['class' => 'btn btn-primary'])}}
    	{!! Form::close() !!}

@endsection