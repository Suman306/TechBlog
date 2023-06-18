<%-- 
    Document   : show_blog_page
    Created on : Jun 17, 2023, 4:47:00 PM
    Author     : Patel SumanKumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.tech.blog.entities.*" %>
<%@page errorPage="error_page.jsp" %>
<%@page import="com.tech.blog.dao.*" %>
<%@page  import="com.tech.blog.helper.*" %>
<%@ page import="java.util.*" %>
<%@ page import= "java.io.PrintWriter" %>

<%

  User user=(User)session.getAttribute("currentUser");
  if(user==null){
  response.sendRedirect("login_page.jsp");
    }

%>
<%
    int postId=Integer.parseInt(request.getParameter("post_id"));
    
    PostDao da=new PostDao(ConnectionProvider.getConnection());
    Post p=da.getPostByPostId(postId);
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= p.getpTitle()%></title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>

        <!--font-awesome icons-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>

            .banner-background{
                clip-path: polygon(50% 0%, 81% 0, 100% 0, 100% 90%, 80% 97%, 58% 91%, 29% 100%, 0 88%, 0 0, 20% 0);
            }


            .post-title{
                font-weight: 100;
                font-size: 30px;
            }
            .post-content{
                font-weight: 100;
                font-size: 30px;
            }
            .post-date{
                font-style: italic;
                font-weight: bold;
            }
            .post-user-info{
                font-size: 20px;

            }
            .row-user{
                border: 1px solid #e2e2e2;
                padding-top: 15px;
            }
            body{
                background: url(img/nightSky.jpg);
                background-size: cover;
                background-attachment: fixed;
            }

        </style>

    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v17.0" nonce="TpT41CzW"></script>
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
                        <a class="nav-link active text-dark  " aria-current="page" href="profile.jsp"><span class="fa fa-home"></span> Home</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle active text-dark" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <span class="fa fa-pencil-square"></span> Categories
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Programming Languages</a></li>
                            <li><a class="dropdown-item" href="#">Data Structures</a></li>
                            <li><hr class="dropdown-divider">Web Development</li>
                            <li><a class="dropdown-item" href="#">Latest Projects</a></li>
                        </ul>
                    </li>

                    <li class="nav-item ">
                        <a class="nav-link active text-dark" href="#"><span class="fa fa-address-book"></span> Contact</a>
                    </li>

                    <li class="nav-item ">
                        <a class="nav-link active text-dark" href="#" data-bs-toggle="modal" data-bs-target="#add-post-modal"><span class="	fa fa-upload"></span> Do Post</a>
                    </li>



                </ul>
                <ul class="navbar-nav mr-right">

                    <li class="nav-item ">
                        <a class="nav-link active text-dark" href="#!" data-bs-toggle="modal" data-bs-target="#profileModal"><span class="fa fa-user-circle"></span> <%= user.getName()%></a>
                    </li>

                    <li class="nav-item ">
                        <a class="nav-link active text-dark" href="LogoutServlet"><span class="fa fa-user-times"></span> Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!--end of navbar-->


    <!--main content of body-->


    <div class="container">
        <div class="row mt-3">
            <div class="col-md-8 offset-md-2">
                <div class="card">
                    <div class="card">

                        <div class="card-header footer-bg">
                            <h4 class="post-title"><%= p.getpTitle()%></h4>
                        </div>
                        <div class="card-body">
                            <img src="blog_pics/<%= p.getpPic()%>" class="card-img-top " alt="Card image cap">

                            <div class="row my-3 row-user">
                                <div class="col-md-7">
                                    <% 
                                     UserDao dao=new UserDao(ConnectionProvider.getConnection());
                                                                                 
                                    %>
                                    <p class="post-user-info"> Posted By :<a href="#!"> <%= dao.getUserByUserId(p.getUserId()).getName()%> </a> </p>
                                </div>
                                <div class="col-md-5">
                                    <p class="post-date">Posted On : <%= p.getpDate().toLocaleString()%></p>
                                </div>

                            </div>
                            <p class="post-content mt-3"><%= p.getpContent()%></p>
                            <br>
                            <br>
                            <div class="post-code">

                                <code><%= p.getpCode()%></code>

                            </div>
                        </div>
                        <div class="card-footer footer-bg">

                            <%
                                 LikeDao ldao=new LikeDao(ConnectionProvider.getConnection());
                                      
                            %>


                            <a href="#!" onclick="doLike(<%= p.getpId()%>,<%= user.getId()%>)" class="btn btn-outline-dark btn-sm"><i class="fa fa-thumbs-o-up "></i><span class="like-counter"><%= ldao.countLikeOnPost(p.getpId()) %> </span></a>

                            <a href="#!" class="btn btn-outline-dark btn-sm"><i class="fa fa-commenting-o"></i><span> 20</span></a>

                        </div>
                        <div class="card-footer">

                            <div class="fb-comments" data-href="http://localhost:8080/TechBlog/show_blog_page.jsp?post_id=<%= p.getpId()%>" data-width="" data-numposts="5">
                            
                            </div>
                        </div>
                    </div>



                </div>



            </div>


        </div>

    </div>


    <!--end of main content of body-->





    <%
     Message m=(Message)session.getAttribute("msg");
     if(m!=null){
    %>
    <div class="alert <%= m.getCssClass()%> mt-3" role="alert">
        <%= m.getContent()%>
    </div>

    <%
        session.removeAttribute("msg");
       }
                           
    %>


    <!--profile Modal-->



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


                        <div id="prfile-details">
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


                        <div id="profile-edit" style="display : none">
                            <h3>Edit Your Profile</h3>

                            <form action="EditServlet" method="post" enctype="multipart/form-data">

                                <table class="table">

                                    <tr>
                                        <td>ID :</td>
                                        <td><%= user.getId()%></td>
                                    </tr>

                                    <tr>
                                        <td>User Name :</td>
                                        <td><input type="text" class="form-control" name="user_name" value="<%= user.getName()%>"></td>
                                    </tr>

                                    <tr>
                                        <td>Email :</td>
                                        <td><input type="email" class="form-control" name="user_email" value="<%= user.getEmail()%>"></td>
                                    </tr>

                                    <tr>
                                        <td>Password :</td>
                                        <td><input type="password" class="form-control" name="user_password" value="<%= user.getPassword()%>"></td>
                                    </tr>
                                    <tr>
                                        <td>Gender :</td>
                                        <td><%= user.getGender().toUpperCase()%></td>
                                    </tr>
                                    <tr>
                                        <td>About :</td>
                                        <td>
                                            <textarea rows="3" class="form-control" name="user_about" > <%= user.getAbout()%></textarea>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>Upload  Pic :</td>
                                        <td>
                                            <input  type="file" name="image" class="form-control">
                                        </td>
                                    </tr>
                                </table>

                                <div class="container text-center">
                                    <button type="submit" class="btn btn-outline-dark primary-background">SAVE</button>

                                </div>
                            </form>
                        </div>



                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button id="edit-profile-button" type="button" class="btn btn-primary">Edit</button>
                </div>
            </div>
        </div>
    </div>

    <!--end of profile modal-->

    <!--start of post modal-->

    <!-- Modal -->
    <div class="modal fade" id="add-post-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Provide Post Details</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="add-post-form" action="AddPostServlet" method="post">

                        <div class="form-group">

                            <select class="form-select mb-2" aria-label="Default select example" name="cid" >
                                <option selected Disabled>Select the category for post</option>
                                <%
                                    PostDao postd=new PostDao(ConnectionProvider.getConnection());
                                    ArrayList<Category> list= postd.getAllCategories();
                                   for (Category c: list){
                                %>

                                <option value="<%= c.getCid()%>"><%= c.getName()%></option>

                                <%}%>
                            </select>


                        </div>


                        <div class="form-group">
                            <input name="pTitle" type="text" placeholder="Enter the post Title" class="form-control"/>
                        </div>

                        <div class="form-group">
                            <textarea name="pContent" class="form-control mt-2" style="height:"500px" placeholder="Enter your content"></textarea>
                        </div>
                        <div class="form-group">
                            <textarea name="pCode" class="form-control mt-2" style="height:"500px" placeholder="Enter your code(if any)"></textarea>
                        </div>
                        <div class="form-group">
                            <label class="mt-3">Enter Pic for post</label>
                            <br>
                            <input type="file" name="pic" class="mt-2"/>

                        </div>

                        <div class="container text-center">
                            <button type="submit" class="btn btn-outline-primary mt-3 ">Post</button>


                        </div>   
                    </form>

                </div>

            </div>
        </div>
    </div>

    <!--end post modal-->







    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <script src="js/myjs.js" type="text/javascript"></script>

    <!--edit profile script-->
    <script>
                                $(document).ready(function () {

                                    let editStatus = false;
                                    $('#edit-profile-button').click(function () {

                                        if (editStatus == false) {

                                            $("#prfile-details").hide();

                                            $("#profile-edit").show();

                                            editStatus = true;

                                            $(this).text("Back")
                                        } else {
                                            $("#prfile-details").show()

                                            $("#profile-edit").hide();
                                            editStatus = false;
                                            $(this).text("EDIT")
                                        }


                                    });

                                });


    </script>

    <!--now add post js-->

    <script>

        $(document).ready(function (e) {
            $("#add-post-form").on("submit", function (e) {
                //this code gets called when form is submitted...

                event.preventDefault();
//                    console.log("You have submitted");
                let form = new FormData(this);

                //now requesting to server

                $.ajax({

                    url: "AddPostServlet",
                    type: 'POST',
                    data: form,
                    success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        if (data.trim() == 'done') {
                            swal("Good job!", "Post Uploaded Successfully!", "success");

                        } else {
                            swal("Error!", "Something Went Wrong!", "error");
                        }
                    },
                    error: function (jqHR, textStatus, errorThrown) {

                    },
                    processData: false,
                    contentType: false
                });
            });
        });

    </script>



</body>
</html>
