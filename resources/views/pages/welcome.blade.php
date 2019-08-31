@extends('layouts.app')

<link rel="stylesheet" type="text/css" href="style/main.css">
<style type="text/css">
	hr{
		color: blue;
		background-color: blue;
	}
</style>

@section('content')
	<div class="jumbotron text-center">
		<img src="img\ulk-Gisenyi.png">
		<h1>{{$title}}</h1>
		<hr>
		
		<p>
			<a href="/login" class="btn btn-primary btn-lg" role="button">Login</a>
			<a href="register" class="btn btn-success btn-lg" role="button">Register</a>
		</p>
	</div>
	<div class="footer">
		<p>alainburindi@gmail.com</p>
	</div>
	
@endsection
