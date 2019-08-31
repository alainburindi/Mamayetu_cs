@extends ('layouts.app')

@section ('content')
<?php $option = ""; ?>
{!! Form::open(['action' => 'CoursesController@store', 'method' => 'Post'] ) !!}

		<div class="form-group">
    		{{Form::label('nom :', 'nom du cours')}}
    		{{Form::text('name', '',['class' => 'form-control', 'placeholder' => 'nom du cours'])}}
    	</div>
    	<div class="form-group">
    		{{Form::label('max', 'maxima')}}
    		{{Form::number('maxima', '',['class' => 'form-control', 'placeholder' => 'maxima'])}}
    	</div>

        <div class="form-group">
            {{Form::label('max', 'classe')}}
            <select name="option" required class="form-control">
                <option for="" disabled="" selected="">Choisissez la setion</option>
                @foreach($classes->all() as $class)
                @if($class->option != $option)
                    <optgroup label="{{$class->option}}">
                        <option value="{{$class->id}}">{{$class->name.' '. $class->option}}</option>
                    <?php $option = $class->option; ?>
                @else
                <option value="{{$class->id}}">{{$class->name.' '. $class->option}}</option>
                    </optgroup>
                @endif

                
                @endforeach
                
            </select>
        </div>

    	{{Form::submit('Submit',['class' => 'btn btn-primary'])}}
{!! Form::close() !!}

@endsection