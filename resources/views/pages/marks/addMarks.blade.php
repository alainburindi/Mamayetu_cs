@extends ('layouts.app')

@section ('content')
<form method='' class="col-lg-10 col-lg-push-1 well" action="marks/create">
	<button class="btn btn-primary" type="submit" name="submit">Envoyer</button>
</form>
<div class="frames-container">
	<div class="frame">
		<div class="frame-index">
			jjj
		</div>
		
	</div>
</div>
<frame>
	jjjj
</frame>
{{-- {!! Form::open(['action' => '', 'method' => 'POST', 'enctype' => 'multipart/form-data'] ) !!}
        @csrf
{{Form::submit('Submit',['class' => 'btn btn-primary'])}}
{!! Form::close() !!} --}}
	jjjjj
@include ('layouts.footer')
@endsection
