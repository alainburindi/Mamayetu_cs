<?php $maxima = "";

	 ?>
<table class="table table-stripped table-responsive-lg">
		<thead>
			<tr>
				<th>ID</th>
				<th>1ere P</th>
				<th>2eme P</th>
				<th>EXAM</th>
				<th>TOTAL</th>
				<th>3ere P</th>
				<th>4eme P</th>
				<th>EXAM</th>
				<th>TOTAL</th>
				<th>TOT. G</th>
			</tr>
		</thead>
		<tbody style="">
			@foreach($courses as $cours)
				
				@if($cours->maxima != $maxima)
					<th>MAXIMA</th>
					<?php $maxima = $cours->maxima; $counter =1; ?>
					@while($counter <= 2)
	                    <th>{{$maxima}}</th>
	                    <th>{{$maxima}}</th>
	                    <th>{{$maxima*2}}</th>
	                    <th>{{$maxima*4}}</th>
	                    <?php $counter++; ?>
	                @endwhile
	                {{-- <th>{{$maxima*4}}</th>  --}}
	                <th>{{$maxima*8}}</th>
	                <tr>
	                	<th>{{$cours->name}}</th>
	                	<th>{{$cours->periode_1}}</th> 
	                	<th>{{$cours->periode_2}}</th> 
                		<th>{{$cours->exam_1}}</th> 
                		<th>{{ $tot1 = ($cours->periode_1 + $cours->periode_2 + $cours->exam_1)}}</th>
                		<th>{{$cours->periode_3}}</th> 
	                	<th>{{$cours->periode_4}}</th> 
                		<th>{{$cours->exam_2}}</th> 
                		<th>{{$tot2 = ($cours->periode_3 + $cours->periode_4 + $cours->exam_2)}}</th>
                		<th>{{$tot1 + $tot2}}</th>  
	                </tr>
	                  
                @else
                <tr>
                	<th>{{$cours->name}}</th>
                	<th>{{$cours->periode_1}}</th> 
                	<th>{{$cours->periode_2}}</th> 
                	<th>{{$cours->exam_1}}</th>
                	<th>{{ $tot1 = ($cours->periode_1 + $cours->periode_2 + $cours->exam_1)}}</th> 
                	<th>{{$cours->periode_3}}</th> 
	                	<th>{{$cours->periode_4}}</th> 
                		<th>{{$cours->exam_2}}</th> 
                		<th>{{$tot2 = ($cours->periode_3 + $cours->periode_4 + $cours->exam_2)}}</th>
                		<th>{{$tot1 + $tot2}}</th> 
					{{-- <th>
						
					</th>
 --}}			</tr>
                @endif
				
			@endforeach
			
		</tbody>

	</table>
	