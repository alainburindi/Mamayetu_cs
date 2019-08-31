<?php use App\Student; $s="0";
use App\User; $p=0;?>

@extends ('layouts.app')
@section('content')

@if(isset($id))
    <a class="btn btn-primary col-lg-12" href="payments/create">new record</a><p></p>
    {!! Form::open(['action' => 'PagesController@byCriteria', 'method' => 'POST', 'enctype' => 'multipart/form-data'] ) !!}
		@csrf
		<div style="color:red" class="color:mediumblue input-group mt-3 mb-3 color:mediumblue">
			<div style="" class="input-group-prepend color:mediumblue">
		    	{{Form::label('c', 'Criteria', ['class' => 'form-control btn-primary'])}}
		  	</div style="">
                {{Form::number('criteria', '',['class' => 'form-control', 'placeholder' => '000'])}}
            {{Form::hidden('id', $id)}}
			{{Form::submit('Submit',['class' => 'btn btn-primary'])}}
	   

		</div>
	{!! Form::close() !!}
@if(count($pays) > 0)
<h2 class="btn-success">in order</h2>
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
			@if($p != $s->matricule)
				<th>{{$i->id}}</th>
				<th>{{$s->matricule.' '.User::find($s->user_id)->name}} </th>
				<th>{{$i->amount}} </th>
				<th>
					{{-- <a href="/inscription/{{$i->id}}" class="label">view</a> --}}
				<a href="payments/{{$i->id}}/edit" class="label label-success">edit</a>
					<a href="" class="label label-danger btn-danger">delete</a>
                </th>
                @endif
            </tr>
            <?php $p = $i->matricule; ?>            
			@endforeach
			
		</tbody>

    </table>
    
    
@else
<h1 class="text-danger">Nobody has paid</h1>
@endif
<h2 class="btn-danger">Not in order</h2>
<table class="table table-stripped" id="example" class="">
        <thead>
            <tr>
                <th>student id</th>
                <th>Name</th>
            </tr>
        </thead>
        <tbody>
            @foreach($not as $i)
            <tr>
                @if($s != $i->matricule)
                <th>{{$i->matricule}}</th>
            <th>{{User::find($i->user_id)->name}}</th>
                @endif
            </tr>
            <?php $s = $i->matricule; ?>
            @endforeach
            
        </tbody>

    </table>
@include('layouts.footer')
@endif
@endsection