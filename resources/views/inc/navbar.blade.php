  @guest
      {{-- <li class="">
        <a class="nav-link" href="/">ACCEUIL</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/about">A PROPOS</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">SECTIONS</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/contacts">CONTACTEZ-NOUS</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/events">EVENEMENTS</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/inscription/create">PRE-INSCRIPTION</a>
      </li>    --}}
  @else
  <li class="">
      <a class="nav-link" href="/students">Students</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/payments">Payments</a>
    </li>
    <li class="nav-item">
      <a class="nav-link active" href="#">Dashboard</a>
    </li>
    @if(Auth::user()->ability == 1)
      {{-- <li class="nav-item">
        <a class="nav-link" href="/students">Eleves</a>
      </li> --}}
      <li class="nav-item">
        <a class="nav-link" href="/classes">Classes</a>
      </li>
      {{-- <li class="nav-item">
        <a class="nav-link" href="#">Points</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/inscription">Pre-inscription</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/events">Evenements</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Utilisateurs</a>
      </li> --}}
    @elseif(Auth::user()->ability == 2)
      <li class="nav-item">
        <a class="nav-link" href="/students">Eleves</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/marks/{{1}}">Points</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/marks/create">Ajouter Points</a>
      </li> 
    @else
      <li class="nav-item">
        <a class="nav-link" href="/marks/{{0}}">Points</a>
      </li>
    @endif
  @endguest