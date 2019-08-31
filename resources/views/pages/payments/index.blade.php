<?php use App\Student; $s="0";
use App\User;?>

@extends ('layouts.app')
@section('content')
<script>
        $(document).ready(function() {
    $('#example').dataTable();
                });
    </script>
	<a class="btn btn-primary col-lg-12" href="payments/create">new record</a><p></p>
	<table class="table table-stripped" id="example" class="">
		<thead>
			<tr>
				<th>ID</th>
				<th>student id and name</th>
				
				<th>amount</th>
				<th>actions</th>
			</tr>
		</thead>
		<tbody>
			@foreach($pays as $i)
			<?php $s = Student::where('id', $i->student_id)->get()[0]; ?>
			
				<tr>
				<th>{{$i->id}}</th>
				<th>{{$s->matricule.' '.User::find($s->user_id)->name}} </th>
				<th>{{$i->amount}} </th>
				<th>
					{{-- <a href="/inscription/{{$i->id}}" class="label">view</a> --}}
				<a href="payments/{{$i->id}}/edit" class="label label-success">edit</a>
					<a href="" class="label label-danger btn-danger">delete</a>
				</th>
			</tr>
			@endforeach
			
		</tbody>

	</table>
		
@include('layouts.footer')
@endsection