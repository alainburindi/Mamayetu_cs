

@extends ('layouts.app')
@section('content')
	
	<table class="table table-stripped">
		<thead>
			<tr>
				<th>ID</th>
				<th>name</th>
				<th>section</th>
				<th>naissance</th>
				<th>genre</th>
				<th>actions</th>
			</tr>
		</thead>
		<tbody>
			@foreach($inscr as $i)
				<tr>
				<th>{{$i->id}}</th>
				<th>{{$i->nom}} </th>
				<th>{{$i->section}} </th>
				<th>{{$i->naissance}} </th>
				<th> <?php $retVal = ($i->sexe == 'M') ? 'Masculin': 'Feminin' ; ?>{{$retVal}}</th>
				<th>
					<a href="/inscription/{{$i->id}}" class="label">read</a>
					<a href="" class="label label-success">edit</a>
					<a href="" class="label label-danger">delete</a>

				</th>
			</tr>
			@endforeach
			
		</tbody>

	</table>

@include('layouts.footer')
@endsection