@extends ('layouts.app')
@section('content')
	
	<table class="table table-stripped">
		<thead>
			<tr>
				<th>ID</th>
				<th>cours name</th>
				<th>class id</th>
				<th>actions</th>
			</tr>
		</thead>
		<tbody>
			@foreach($courses->all() as $cours)
				<tr>
				<th>{{$cours->id}}</th>
				<th>{{$cours->name}} </th>
				<th>{{$cours->class_id}} </th>
				<th>
					<a href="" class="label">read</a>
					<a href="" class="label label-success">edit</a>
					<a href="" class="label label-danger">delete</a>
				</th>
			</tr>
			@endforeach
			
		</tbody>

	</table>

@include('layouts.footer')
@endsection