<?php use QR_Code\Types\QR_Text; use App\User;?>


@extends ('layouts.app')

@section ('content')
	@if(isset($student))
	 
	<h3>Student informations :</h3>

	<div class="row well">
			<h3>{{$student->matricule}}</h3>

		<div >
			<p></p>
			<img class="col-md-4 col-sm-4 col-lg-4" src="/storage/images/{{$student->picture}}" style="width: 700px, max-height:200px">
		</div>
		<div class="col-lg-8">
			<div class="well ">
				<p>
					Student name : {{User::find($student->user_id)->name}} <br>
				</p>
			</div>
		</div>
		<div >

			<div class="col-md-4 col-sm-4 col-lg-12">
				<?php
					// $p = (new QR_Text($student->student_id));
					// $p->setSize(6);
					// $p->svg();
				?>
			</div>  
		</div>
		{{-- <div >
			<img class="col-md-2 col-sm-4 col-lg-4" src="/storage/images/class_{{$student->class_id}}/{{$student->student_pic}}" style="">
		</div> --}}
	</div>
	<div class="row">
		<a href="/students/{{$student->id}}/edit" class="btn btn-primary">Edit</a>
		{!!Form::open(['action' =>['StudentsController@destroy', $student->student_id], 'method' => 'POST', 'class' => 'pull-right'])!!}
			{{Form::hidden('_method', 'DELETE')}}
			{{Form::submit('Delete', ['class'=>'btn btn-danger'])}}
		{!!Form::close()!!}
	</div>
		
	@else
	//////
		{{-- <?php redirect('classes/')?> --}}

	@endif
@endsection