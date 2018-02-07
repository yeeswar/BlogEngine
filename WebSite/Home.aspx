<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title> </title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
    <link href="Css/Custom.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="Main">
        <section>
            <div class="Header">

            </div>
            <div>
                <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                    <!-- Brand -->
                    <a class="navbar-brand" href="#">Navbar</a>

                    <!-- Toggler/collapsibe Button -->
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
              <span class="navbar-toggler-icon"></span>
            </button>

                    <!-- Navbar links -->
                    <div class="collapse navbar-collapse" id="collapsibleNavbar">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                            </li>
                        </ul>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search for..." aria-label="Search for...">
                            <span class="input-group-btn">
                              <button class="btn btn-secondary" type="button">Go!</button>
                            </span>
                        </div>
                    </div>
                </nav>
            </div>
        </section>
        <section class="container mt-2">
            <div class="row">
               
              <div class="col-md-9">
                    <div class="jumbotron">
                        <div >
                            <h1 class="display-3">Fluid jumbotron</h1>
                            <p class="lead">This is a modified jumbotron that occupies the entire horizontal space of its parent.</p>
                        </div>
                    </div>
                </div>
                 <div class="col-md-3">
                        <img src="Images/cinqueterre.jpg" class="img-thumbnail" alt="Cinque Terre">
                </div>
            </div>
             <div class="row">
              <div class="col-md-9">
                   <h3 class="d-flex p-2 heading">News</h3>
                   <div class="p-3 mb-2 border bg-white">
  Bootstrap 3 vs. Bootstrap 4
Bootstrap 4 is the newest version of Bootstrap; with new components, faster stylesheet and more responsiveness.

Bootstrap 4 supports the latest, stable releases of all major browsers and platforms. However, Internet Explorer 9 and down is not supported.
</div>
                </div>
               
                  <div class="col-md-3">
                      <img src="Images/cinqueterre.jpg" class="img-thumbnail" alt="Cinque Terre">
                </div>
            </div>
<div class="row">
              <div class="col-md-9">
                   <h3 class="d-flex p-2 heading">News</h3>
                   <div class="border">
  Bootstrap 3 vs. Bootstrap 4
Bootstrap 4 is the newest version of Bootstrap; with new components, faster stylesheet and more responsiveness.

Bootstrap 4 supports the latest, stable releases of all major browsers and platforms. However, Internet Explorer 9 and down is not supported.
</div>
                </div>
               
                  <div class="col-md-3">
                      <img src="Images/cinqueterre.jpg" class="img-thumbnail" alt="Cinque Terre">
                </div>
            </div>
        </section>
        <section class="footer">
        <div class="py-3 text-white"> 
<div class="row mx-0">
<div class="col-md-3">
<ul>
  <li >Active item</li>
  <li >Second item</li>
  <li >Third item</li>
</ul>
</div> 
<div class="col-md-3">
<ul>
  <li >Active item</li>
  <li >Second item</li>
  <li >Third item</li>
</ul>
</div>
<div class="col-md-3">
<ul>
  <li >Active item</li>
  <li >Second item</li>
  <li >Third item</li>
</ul>
</div>
<div class="col-md-3">
<ul>
  <li >Active item</li>
  <li >Second item</li>
  <li >Third item</li>
</ul>
</div>
</div>
        </div>
            <footer class="bottom-footer text-center py-2">
<p> © 2018. vizag.com. All Rights Reserved.</p>
                   <ul class="float-right">
                            <li><a href="#" class="tran3s round-border"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#" class="tran3s round-border"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                            <li><a href="#" class="tran3s round-border"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            <li><a href="#" class="tran3s round-border"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#" class="tran3s round-border"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
                        </ul>
                    <a href="#" class="fa fa-facebook"></a>
<a href="#" class="fa fa-twitter"></a>
<a href="#" class="fa fa-google"></a>
<a href="#" class="fa fa-linkedin"></a>
            </footer>
        </section>
    </div>
    </div>
    </form>
</body>
</html>
