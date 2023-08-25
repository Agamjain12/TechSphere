<%-- 
    Document   : load_posts
    Created on : 23-Aug-2023, 7:28:24?pm
    Author     : agamj_d8qc0cg
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.app.blog.entities.Post"%>
<%@page import="com.app.blog.helper.ConnectionProvider"%>
<%@page import="com.app.blog.dao.PostDao"%>

<div class="row">
<%
   
    
    Thread.sleep(1200);
    PostDao d = new PostDao(ConnectionProvider.getConnection());
    int cid = Integer.parseInt(request.getParameter("cid"));
     List<Post> posts =null;
    if(cid==0){
     posts = d.getAllPosts();
    
    }
    
    else{
          posts= d.getPostByCatId(cid);
    }
    
    if(posts.size()==0){
     out.println("<h3 class='display-3 text-center' >No post in this category</h3>");
     return;
    }
    
    
    for(Post p : posts){
    %>
      
    
    <div class="col-md-6 mt-2">
        <div class="card">
            
           <img class="card-img-top" src="blog_pics/<%= p.getpPic()%>" alt="Card image cap">
            <div class="card-body">
                
                <b><%= p.getpTitle() %></b>
                <p><%= p.getpContent()%></p>
<!--                <pre><%= p.getpCode()%></pre>-->
                
                
                
                
            </div> 
           
<!--             buttons-->
<div class="card-footer primary-background text-center">
   <a href="show_blog_page.jsp?post_id=<%= p.getPid()%>" class="btn btn-outline-light btn-sm">Read More...</a>
    <a href="#" class="btn btn-outline-light btn-sm"><i class="fa fa-thumbs-o-up"></i> <span>10</span> </a>
    <a href="#" class="btn btn-outline-light btn-sm"><i class="fa fa-commenting-o"></i> <span>20</span> </a>
</div>
            
            
        </div>
        
        
        
        
    </div>
    
    
    
    <%
    }

%>

</div>