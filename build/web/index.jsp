<%-- 
    Document   : index.jsp
    Created on : Jun 11, 2023, 1:32:34 PM
    Author     : Patel SumanKumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page  import="com.tech.blog.helper.ConnectionProvider" %>
<!DOCTYPE html>
<html>  
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>

        <!--css-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>

        <style>

            .banner-background{
                clip-path: polygon(50% 0%, 81% 0, 100% 0, 100% 90%, 80% 97%, 58% 91%, 29% 100%, 0 88%, 0 0, 20% 0);

            }

        </style>
        <!--font-awesome icons-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



    </head>
    <body>

        <!--navbar-->

        <%@include file="normal_navbar.jsp" %>

        <!--banner-->

        <div class="container-fluid p-0 m-0 ">
            <div class="jumbotron  custom-background banner-background ">

                <div class="container container-small  ">
                    <h3 class="display-3  mb-3">Welcome to TechBlog </h3>
                    <p>Welcome to world of latest tech blogs </p>
                    <p>Welcome to our tech blog! We're your go-to source for the latest in tech news, trends, and insights. Stay informed, inspired, and connected with our concise and informative articles. Join us as we explore the ever-evolving world of technology together!</p>

                    <button class="btn btn-outline-dark btn-lg mb-4"><span class="fa fa-external-link"></span> Start ! its Free</button>
                    <a href="login_page.jsp" class="btn btn-outline-dark btn-lg mb-4" ><span class="fa fa-user"></span> Login</a>
                    <br>
                    <br>
                </div>
            </div>


        </div>

        <!--cards-->

        <div class="container">


            <div class="row m-5">

                <div class="col-md-4">

                    <div class="card" >

                        <div class="card-body">
                            <h5 class="card-title">JAVA BASIC</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-dark">Go somewhere</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">

                    <div class="card" >

                        <div class="card-body">
                            <h5 class="card-title">JAVA BASIC</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-dark">Go somewhere</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">

                    <div class="card" >

                        <div class="card-body">
                            <h5 class="card-title">JAVA BASIC</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-dark">Go somewhere</a>
                        </div>
                    </div>
                </div>


            </div>

            <div class="row m-5">

                <div class="col-md-4">

                    <div class="card" >

                        <div class="card-body">
                            <h5 class="card-title">JAVA BASIC</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-dark">Go somewhere</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">

                    <div class="card" >

                        <div class="card-body">
                            <h5 class="card-title">JAVA BASIC</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-dark">Go somewhere</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">

                    <div class="card" >

                        <div class="card-body">
                            <h5 class="card-title">JAVA BASIC</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-dark">Go somewhere</a>
                        </div>
                    </div>
                </div>


            </div>

            <div class="row m-5">

                <div class="col-md-4">

                    <div class="card" >

                        <div class="card-body">
                            <h5 class="card-title">JAVA BASIC</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-dark">Go somewhere</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">

                    <div class="card" >

                        <div class="card-body">
                            <h5 class="card-title">JAVA BASIC</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-dark">Go somewhere</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">

                    <div class="card" >

                        <div class="card-body">
                            <h5 class="card-title">JAVA BASIC</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-dark">Go somewhere</a>
                        </div>
                    </div>
                </div>


            </div>
        </div>




        <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <!--<script src="js/myjs.js" type="text/javascript"></script>-->

    </body>
</html>
