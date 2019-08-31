@extends('layouts.app')

@section('content')

	@if(count($events) > 0)
		@foreach($events->all() as $event)
			<div class="col-lg-8 col-lg-push-2">
				<h2><?php echo $event->event_name;?></h2>
				<div class="row">
					<img src="config/<?php echo $event->event_pic;?>" class="col-lg-11 w-100" height="300px" class="img-responsive">
					@guest
					{{-- @else --}}
					{{-- @if(Auth()->user()->ability==3) --}}
					<div class="row col-lg-1" style="margin-top: 30px">
						<a href="events/{{$event->id}}/edit" class="w-100"><button class="btn btn-outline-primary">Edit</button></a>
						<a href="#"><button class="btn btn-danger">Delete</button>
					</a>
					<a href="/events/{{$event->id}}"><button href="ddd" class="btn btn-outline-success ">View</button></a>
					</div>
					{{-- @endif  --}}
					@endguest 
				</div>
				
				<h3><?php echo $event->event_description;?></h3>
			</div>
		@endforeach
	@else
		no data
	@endif


@include('layouts.footer')
@endsection