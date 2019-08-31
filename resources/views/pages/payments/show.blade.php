<?php use App\Student; $s="0";
use App\User; $tot = 0;?>

@extends ('layouts.app')
@section('content')
<a class="btn btn-primary col-lg-12" href="payments/create">new record</a><p></p>
@if(count($pays) > 0)
	
	<table class="table table-stripped">
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
			<?php $s = Student::where('id', $i->student_id)->get()[0]; $tot = $tot + $i->amount;?>
			
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
    @else
    <h1 class="text-danger">Nothing paid</h1>
    @endif

<div class="row">
    <div class="col-lg-12">
    <p>Total amount paid :{{$tot}}</p>
    <p> Remain : {{140 - $tot}}</p>
    </div>
</div>

@include('layouts.footer')
@endsection