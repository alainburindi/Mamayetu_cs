
@extends('layouts.app')

@section('content')
<div style="text-align: center;">
    
        <div class="row">
            <div class="media col-lg-12 " >
                <img class="rounded eleve w-100" src="storage/images/eleve.jpg" alt="eleves">
            </div>
        </div>
<div class="row">
            <div class="col-lg-12 inscription bg-success" style=" margin-top: 2px">
                <p class="annonce "> Inscription 2016 - 2017 en cours...</p>
                <a href="#">INSCRIVEZ-VOUS ICI</a>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h3 class=" text-dark">Le Complexe Scolaire Mama Yetu organise les formations dans les options suivantes: </h3>
                <p> </p>
                <div class="col-xs-6 col-lg-12 col-xs-push-3 col-lg-push-0 nosformations ">
                    <a href="#" class="btn btn-primary">TECHNIQUE</a>
                        
                    <a href="#" class="btn btn-primary"id="sc">SCIENTIFIQUE</a>
                    <a href="#" class="btn btn-primary "id="peda" class="col-lg-push-3">PEDAGOGIE</a>
                </div>
				
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 apercu">
                
                    <h2>APERÇU SUR LE C.S. MAMA YETU</h2>
					<p>
                        Une des écoles ainées privées de la ville de Goma<br>
                        Sa création rémonte aux année 1994<br>
                    </p> 
                    <p>
                        <a class="btn btn-info btn-lg" role="button" href="about">En savoir plus 
                        <span class="glyphicon glyphicon glyphicon-hand-right"></span></a>
                    </p>
            </div>
        </div>
        <div class="row direction">
            <div class="col-lg-12">
                    <h1>COMITE DE DIRECTION</h1>
            </div>
                <div class="col-lg-4 prefect col-sm ">
                    <img src="storage/images/default-user.png" alt="" class="img-circle img-respo w-100">
                    <h4>Le prefet des etudes</h4>
                 </div>
                <div class="col-lg-4 directeur">
                    <img src="storage/images/default-user.png"class="w-100" alt="">
                    <h4>Le directeur</h4>
                </div>
                <div class="col-lg-4 desetudes">
                    <img src="storage/images/default-user.png" alt="" class="w-100">
                    <h4>Le directeur des etudes</h4>
                </div>
<div class="container mt-3">


    @if(count($donnees) > 0)
        <h1 class="col-lg-12">EVENEMENTS RECENTS</h1>
        <div class="row">
            <div class="col-lg-12">            
                <div id="myCarousel" class="carousel slide" data-ride="carousel" >
                    <ul class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ul>

                <div class="carousel-inner" role="">
                    <?php $counter=0;?>
                    @foreach($donnees as $data)
                        <?php $counter=$counter+1;?>
                        @if($counter==1)
                        <div class="carousel-item active">
                            <img style="height:300px;" src="storage/images/events/<?php echo $data->event_pic ;?>">
                            <div class="carousel-caption">
                                <h3 class="text-danger"><?php echo $data->event_name  ?></h3>
                            </div>
                        </div>
                        @else
                            <div class="carousel-item">
                                <img style="height:300px;" src="storage/images/events/<?php echo $data->event_pic ;?>">
                                <div class="carousel-caption">
                                    <h3 class="text-danger"><?php echo $data->event_name ?></h3>
                                </div>
                            </div>
                        @endif
                                    
                    @endforeach
                </div>
                <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#myCarousel" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
                </div>
            </div>
        </div>
    @else
    @endif
                
</div>
     {{-- @include('inc.map') --}}
@endsection