<div id="wrapper">
  <!-- Sidebar -->
  <ul class="navbar-nav sidebar sidebar-dark accordion" id="accordionSidebar" style="background: linear-gradient(180deg, #080036, #670097 100%);">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/">
      <div class="sidebar-brand-text mx-3">Sorak Sorai</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item">
      <a class="nav-link {{ Request::is('dashboard') ? 'active' : '' }}" aria-current="page" href="/dashboard">
        <i class="fas fa-fw fa-tachometer-alt"></i>
        <span>Dashboard</span></a>
    </li>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
      <a class="nav-link {{ Request::is('dashboard/admins*') ? 'active' : '' }} && {{ Request::is('dashboard/users*')  ? 'active' : '' }} && {{ Request::is('dashboard/vendors*')  ? 'active' : '' }}  collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
        <i class="fas fa-fw fa-user"></i>
        <span>Users</span>
      </a>

      <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
          <!-- <h6 class="collapse-header">Login Screens:</h6> -->
          <a class="collapse-item {{ Request::is('dashboard/admins*') ? 'active' : '' }} " aria-current="page" href="/dashboard/admins">Admin</a>
          <a class="collapse-item {{ Request::is('dashboard/users*') ? 'active' : '' }} " aria-current="page" href="/dashboard/users">Pengunjung</a>
        </div>
      </div>
    </li>
    
    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
      E-Ticket
    </div>

    <li class="nav-item">
      <a class="nav-link {{ Request::is('dashboard/scheduleHistory*') ? 'active' : '' }}" aria-current="page" href="/dashboard/scheduleHistory">
        <i class="fas fa-calendar-alt"></i>
        <span>Schedule</span>
      </a>
    </li>

    <li class="nav-item">
      <a class="nav-link {{ Request::is('dashboard/orders*') ? 'active' : '' }}" aria-current="page" href="/dashboard/orders">
        <i class="fas fa-ticket-alt"></i>
        <span>Users Ticket</span>
      </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
      Festival Set
    </div>

    <li class="nav-item">
      <a class="nav-link {{ Request::is('dashboard/posts*') ? 'active' : '' }}" aria-current="page" href="/dashboard/posts">
        <i class="fas fa-fw fa-shopping-bag"></i>
        <span>Merchandise</span>
      </a>
    </li>

    <li class="nav-item">
      <a class="nav-link {{ Request::is('dashboard/lineups*') ? 'active' : '' }} " aria-current="page" href="/dashboard/lineups">
        <i class="fas fa-fw fa-music"></i>
        <span>Line Up</span>
      </a>
    </li>

    <li class="nav-item">
      <a class="nav-link {{ Request::is('dashboard/sponsors*') ? 'active' : '' }} " aria-current="page" href="/dashboard/sponsors">
        <i class="fas fa-fw fa-dollar-sign"></i>
        <span>Sponsor</span>
      </a>
    </li>

    <li class="nav-item">
      <a class="nav-link {{ Request::is('dashboard/medias*') ? 'active' : '' }} " aria-current="page" href="/dashboard/medias">
        <i class="fas fa-fw fa-camera"></i>
        <span>Media</span>
      </a>
    </li>

    <li class="nav-item">
      <a class="nav-link {{ Request::is('dashboard/activities*') ? 'active' : '' }} " aria-current="page" href="/dashboard/activities">
        <i class="fas fa-fw fa-list"></i>
        <span>Activity</span>
      </a>
    </li>

    <li class="nav-item">
      <a class="nav-link {{ Request::is('dashboard/galleries*') ? 'active' : '' }} " aria-current="page" href="/dashboard/galleries">
        <i class="fas fa-fw fa-image"></i>
        <span>Gallery</span>
      </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
      <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

  </ul>
  <!-- End of Sidebar -->
</div>