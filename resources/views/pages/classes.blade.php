<?php use Illuminate\Support\Facades\DB;
	use App\Professor;
?>

@extends ('layouts.app')
@section('content')
	
	<table class="table table-stripped">
		<thead>
			<tr>
				<th>ID</th>
				<th>class name</th>
				<th>titulaire</th>
				<th>actions</th>
			</tr>
		</thead>
		<tbody>
			@foreach($classes as $class)
				<tr>
				<th>{{$class->id}}</th>
				<th>{{$class->name.' '. $class->option}} </th>
				<th>{{$class->titulaire}}</th>
				<th>
					<a href="/classes/{{$class->id}}" class="label">read</a>
					<a href="" class="label label-success">edit</a>
					<a href="" class="label label-danger">delete</a>
					<a href="/eleves/{{$class->id}}" class="label label-danger">view students</a>
					<a href="/byclass/{{$class->id}}" class="btn btn-danger">view payment</a>
				</th>
			</tr>
			@endforeach
			
		</tbody>

	</table>

@include('layouts.footer')
@endsection