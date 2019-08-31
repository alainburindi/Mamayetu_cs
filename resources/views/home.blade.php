@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <?php 
                        $id = Auth::user()->ability;
                         if ($id == 1) {
                           $logged = "Admin";
                        }elseif ($id ==2) {
                            $logged = "Professor";
                        } else {
                           $logged = "Student"; 
                        } 
                    ?>
                    You are logged in as {{$logged}}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
