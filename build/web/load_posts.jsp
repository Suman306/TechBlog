
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.tech.blog.entities.*" %>
<%@page errorPage="error_page.jsp" %>
<%@page import="com.tech.blog.dao.*" %>
<%@page  import="com.tech.blog.helper.*" %>
<%@ page import="java.util.*" %>
<%@ page import= "java.io.PrintWriter" %>

<div class="row">
    <%
      Thread.sleep(1000);
    PostDao d=  new PostDao(ConnectionProvider.getConnection());
    int cid=Integer.parseInt(request.getParameter("cId"));
    List<Post> posts=null;
    if(cid==0){
     posts=d.getAllPosts();
        }
        else{
        posts=d.getPostByCatId(cid);
        }
        
        if(posts.size()==0){
        out.println("<h3 class='display-3 text-center'>No posts in this Category Yet<h3>");
        }
    for(Post p:posts){

    %>

    <div class="col-md-6 mt-2">

        <div class="card">
            <img src="blog_pics/<%= p.getpPic()%>" class="card-img-top" alt="Card image cap">

            <div class="card-body">
                <b><%= p.getpTitle()%></b>
                <p><%= p.getpContent()%></p> 
<!--                <code><%= p.getpCode()%></code>-->
            </div>
            <div class="card-footer text-center footer-bg">

                <a href="#!" class="btn btn-outline-light btn-sm"><i class="fa fa-thumbs-o-up "></i><span > 10</span></a>

                <a href="show_blog_page.jsp?post_id=<%= p.getpId()%>" class="btn btn-outline-light btn-sm">Read more...</a>
                <a href="#!" class="btn btn-outline-light btn-sm"><i class="fa fa-commenting-o"></i><span> 20</span></a>
            </div>
        </div>

    </div>

    <%
        }
    %>

</div>
