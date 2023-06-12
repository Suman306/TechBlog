<%-- 
    Document   : register_page
    Created on : Jun 12, 2023, 3:53:12 PM
    Author     : Patel SumanKumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register_Page</title>
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
         <%@include file="normal_navbar.jsp" %>
        <main class="d-flex align-items-center primary-background  " style="min-height: 60vh">
            
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    
                    <div class="card">
                        <div class="card-header login-header-background text-center">
                            <span class="fa fa-user-plus fa-2x"></span>
                            <h2>Register Here</h2>
                        </div>
                        <div class="card-body">
                            <form >
                                
                                <div class="mb-3">
                                        <label for="user_name" class="form-label">Enter your name</label>
                                        <input type="email" class="form-control" id="user_id" aria-describedby="emailHelp" placeholder="Enter your name">
                                        <div id="emailHelp" class="form-text">Please Enter your Name.</div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your Email">
                                        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                    </div>
                                
                                 <div class="mb-3">
                                     <label for="gender" class="form-label">Select Gender</label><br>
                                        <input type="radio"  id="gender" name="gender" > Male
                                         <input type="radio"  id="gender" name="gender"  > Female
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputPassword1" class="form-label">Password</label>
                                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter your Password">
                                    </div>
                                
                                <div class="mb-3">
                                    <label for="About" class="form-label">About Yourself</label>
                                    <textarea name="about" class="form-control " id=""  rows="5" placeholder="Tell about yourself"></textarea>
                                    
                                </div>
                                    <div class="mb-3 form-check">
                                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">Agree Terms and Condition</label>
                                    </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                                </form>  
                            
                        </div>
                        
                       
                        <br>
                        
                    </div>
                     <br>
                </div>
                <br>
                
                
            </div>
        </main>
        
        
          <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <!--<script src="js/myjs.js" type="text/javascript"></script>-->

    </body>
</html>
