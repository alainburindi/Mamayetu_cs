@extends('layouts.app')

@section('content')
<div style="text-align: center;">
    <img class="eleve w-100" src="storage/images/eleves.jpg" alt="eleves">

    <div class="row">
        <div class="col-lg-12 inscription  mb-3" style=" margin-top: 2px">
            <p class="annonce "> Inscription 2019 - 2020 en cours...</p>
            <a href="#" class="">INSCRIVEZ-VOUS ICI <i class="fas fa-sign-in-alt"></i> </a>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <h3 class=" text-dark">Le Complexe Scolaire Mama Yetu organise les formations dans les options suivantes:
            </h3>
            <p> </p>
            <div class="col-xs-6 col-lg-12 col-xs-push-3 col-lg-push-0 nosformations ">
                <a href="#" class="btn btn-primary">TECHNIQUE</a>

                <a href="#" class="btn btn-primary" id="sc">SCIENTIFIQUE</a>
                <a href="#" class="btn btn-primary " id="peda" class="col-lg-push-3">PEDAGOGIE</a>
            </div>

        </div>
    </div>
    <div class="row">
        <div class="col-lg-12 apercu mb-3">
            <p>
                Le C.S. MAMA YETU est l'une des écoles ainées privées de la ville de Goma<br>
                Sa création rémonte aux année 1994<br>
            </p>
            <a class="btn btn-info btn-lg" role="button" href="/about">En savoir plus &nbsp;
                <i class="fas fa-hand-point-right"></i></a>
        </div>
    </div>
    <div class="row direction">
        <div class="col-lg-12 direction_commity">
            <h1>COMITE DE DIRECTION</h1>
        </div>
        <div class="col-lg-4 prefect containerp col-sm ">
            <div class="">
                <img src="storage/images/pp.jpeg" alt="" class=" rounded-circle img-circle img-respo">
                <div class="overlay">
                    <div class="text">Alain Burindi</div>
                </div>
            </div>

            <h4>Le prefet des etudes</h4>
        </div>
        <div class="col-lg-4 containerp directeur">
            <img src="storage/images/pp.jpeg" class=" rounded-circle" alt="">
            <div class="overlay">
                <div class="text">Alain Burindi 2</div>
            </div>
            <h4>Le directeur</h4>
        </div>
        <div class="col-lg-4 containerp desetudes">
            <img src="storage/images/pp.jpeg" alt="" class=" rounded-circle">
            <h4>Le directeur des etudes</h4>
            <div class="overlay">
                <div class="text">Alain Burindi 3</div>
            </div>
        </div>
    </div>

    <div class="container mt-3">


        @if(count($donnees) > 0)
        <h1 class="col-lg-12">EVENEMENTS RECENTS</h1>
        <div class="row">
            <div class="col-lg-12">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
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
                            <img class="w-100" style="height:300px;"
                                src="storage/images/events/<?php echo $data->event_pic ;?>">
                            <div class="carousel-caption">
                                <h3 class="carousel-item_text"><?php echo $data->event_name  ?></h3>
                            </div>
                        </div>
                        @else
                        <div class="carousel-item">
                            <img class="w-100" style="height:300px;"
                                src="storage/images/events/<?php echo $data->event_pic ;?>">
                            <div class="carousel-caption">
                                <h3 class="carousel-item_text"><?php echo $data->event_name ?></h3>
                            </div>
                        </div>
                        @endif

                        @endforeach
                    </div>
                    <!-- Left and right controls -->
                    <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                        <i class="fas fa-chevron-left"></i>
                    </a>
                    <a class="carousel-control-next" href="#myCarousel" data-slide="next">
                        <i class="fas fa-chevron-right"></i>
                    </a>
                </div>
            </div>
        </div>
        @else
        @endif

        {{-- @include('inc.map') --}}
        @endsection