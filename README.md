# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

 <%= csrf_meta_tags %>
    <%= csp_meta_tag %>
         <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        
    
    
    <%= stylesheet_pack_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_pack_tag 'application', 'data-turbolinks-track': 'reload' %>
    <%= stylesheet_link_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    
  </head>
    
        

  <body id= 'page-top'>
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container">
                <%# <a class="navbar-brand js-scroll-trigger" href="#page-top">Start Bootstrap</a><button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu<i class="fas fa-bars"></i></button> %>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><%= link_to 'Home', href= '/', class: 'nav-link js-scroll-trigger' %></li>
                        <li class="nav-item"><%= link_to 'All Beers', beers_path, class: 'nav-link js-scroll-trigger' %></li>
                        <li class="nav-item"><%= link_to 'All Breweries', breweries_path, class: 'nav-link js-scroll-trigger' %></li>
                        <li class="nav-item"><%= link_to 'All Favorites', favorites_path, class: 'nav-link js-scroll-trigger' %></li>
                    </ul>
                </div>
            </div>
        </nav>

             <!-- Masthead-->
        <header class="masthead">
            <div class="container d-flex h-100 align-items-center">
                <div class="mx-auto text-center">
                    <h1 class="mx-auto my-0 text-uppercase">Beer-A-Dex</h1>
                    <h2 class="text-white-50 mx-auto mt-2 mb-5">Gotta Drink 'Em All!</h2>
                </div>
            </div>
        </header>
