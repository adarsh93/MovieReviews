<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About_Us.aspx.cs" Inherits="MovieReviews.About_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Mashed Potatoes</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="Index.css"/>

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Javascripts Charts CDN -->
    <script src="Chart.js"></script>
   
    <link href="css/star-rating.css" media="all" rel="stylesheet" type="text/css" />
    <!-- optionally if you need to use a theme, then include the theme CSS file as mentioned below -->

    <link href="themes/krajee-svg/theme.css" media="all" rel="stylesheet" type="text/css" />

    <script src="js/star-rating.js" type="text/javascript"></script>

    <!-- optionally if you need to use a theme, then include the theme JS file as mentioned below -->
    <script src="themes/krajee-svg/theme.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1"/>

</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
           <div class="navbar-header">
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#directHere">
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
               </button>
               <a class="navbar-brand" href="#">Mashed-Potatoes</a>
           </div>
          <div class="collapse navbar-collapse" id="directHere">
              <ul class="nav navbar-nav">
                  <li class="active"><a href="#">Home</a></li>
                  <li><a href="MoviesWebService.asmx" target="_blank">Upcoming Movies</a></li>
                  <li><a href="About_Us.aspx" target="_blank">About Us</a></li>
              </ul>
        </div>

          <div class="jumbotron text-center">
            <h1>Mashed Potatoes</h1>
            <p>Your one place for all Movie Reviews !</p>
            <form class="form-inline">
                <div class="input-group">
                    <p>Started by Adarsh Suresh, Mohsin Asif, and Shashank Chopra, Mashed Potatoes seeks to give you the best movie finding experience possible. Please give it a try and let us know what you think!</p>
                </div>
            </form>
        </div>
          </div>
</nav>
</body>
</html>