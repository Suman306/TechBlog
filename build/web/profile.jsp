
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.tech.blog.entities.User" %>
<%@page errorPage="error_page.jsp" %>
<%

  User user=(User)session.getAttribute("currentUser");
  if(user==null){
  response.sendRedirect("login_page.jsp");
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

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

        <nav class="navbar navbar-expand-lg navbar-dark primary-background">
            <div class="container-fluid">
                <a class="navbar-brand text-dark" href="index.jsp"><span class="fa fa-building"></span> Tech Blog</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active text-dark  " aria-current="page" href="#"><span class="fa fa-home"></span> Home</a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle active text-dark" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <span class="fa fa-pencil-square"></span> Categories
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Programming Languages</a></li>
                                <li><a class="dropdown-item" href="#">Data Structures</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">Latest Projects</a></li>
                            </ul>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link active text-dark" href="#"><span class="fa fa-address-book"></span> Contact</a>
                        </li>




                    </ul>
                    <ul class="navbar-nav mr-right">

                        <li class="nav-item ">
                            <a class="nav-link active text-dark" href="#!" data-bs-toggle="modal" data-bs-target="#profileModal"><span class="fa fa-user-circle"></span> <%= user.getName()%></a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link active text-dark" href="LogoutServlet"><span class="	fa fa-user-times"></span> Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!--end of Navebar-->

        <!--modal-->

        <!-- Button trigger modal -->


        <!-- Modal -->
        <div class="modal fade" id="profileModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header primary-background">
                        <h5 class="modal-title" id="exampleModalLabel"> USER PROFILE</h5> 
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="container text-center">

                            <img src="pics/<%= user.getProfile()%>" class="img-fluid" style="border-radius:50%;max-width: 150px" >
                            <h5 class="modal-title" id="exampleModalLabel"> <%= user.getName()%></h5><br>


                            <table class="table">
                                
                                <tbody>
                                    <tr>
                                        <th scope="row">ID </th>
                                        <td><%= user.getId()%></td>
                                      
                                    </tr>
                                    <tr>
                                        <th scope="row">EMAIL </th>
                                        <td><%= user.getEmail()%></td>
                                       
                                    </tr>
                                    <tr>
                                        <th scope="row">GENDER</th>
                                         <td><%= user.getGender()%></td>
                                    </tr>
                                      <tr>
                                        <th scope="row">ABOUT</th>
                                         <td><%= user.getAbout()%></td>
                                    </tr>
                                    
                                     <tr>
                                        <th scope="row">REGISTERED ON</th>
                                         <td><%= user.getDateTime().toString()%></td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Edit</button>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <!--<script src="js/myjs.js" type="text/javascript"></script>-->

    </body>
</html>
