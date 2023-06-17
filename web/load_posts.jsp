
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.tech.blog.entities.*" %>
<%@page errorPage="error_page.jsp" %>
<%@page import="com.tech.blog.dao.*" %>
<%@page  import="com.tech.blog.helper.*" %>
<%@ page import="java.util.*" %>

<div class="row">
    <%

    PostDao d=  new PostDao(ConnectionProvider.getConnection());
    List<Post> posts=d.getAllPosts();
    for(Post p:posts){

    %>

    <div class="col-md-6 mt-2">

        <div class="card">
            <img src="blog_pics/<%= p.getpPic()%>" class="card-img-top" alt="...">

            <div class="card-body">
                <b><%= p.getpTitle()%></b>
                <p><%= p.getpContent()%></p>
                <code><%= p.getpCode()%></code>
            </div>
        </div>

    </div>

    <%
        }
    %>

</div>
