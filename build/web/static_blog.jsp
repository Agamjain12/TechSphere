<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!--       made using clip path maker-->
 <style>
            .banner-background{
             clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 63% 100%, 22% 91%, 0 99%, 0 0);
            }
            
            
            .post-title{
                
                font-weight: 100;
                font-size: 30px;
            }
            .post-content{
                font-weight: 100;
                font-size: 25px;
            }
            .post-date{
                font-style: italic;
                font-weight: bold;
                
            }
            .post-user-info{
                font-size: 20px;
/*                font-weight: 200;*/
            }
            .row-user{
                
                border: 1px solid #e2e2e2;
                padding-top: 15px;
            }
            
            body{
                
                background: url(img/pexels-miguel-á-padriñán-1111318.jpg);
                background-size: cover;
                background-attachment: fixed;
            }
            
            
            
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blog</title>
    
        
    </head>
    <body>
       
    <!--      navbar-->
    
    <%@include file="norm_navbar.jsp" %>
    
<!--    navbar end-->

<!--   main content of body-->


   <div class="container">

            <div class="row my-4">

                <div class="col-md-8 offset-md-2">


                    <div class="card">

                        <div class="card-header primary-background text-white">

                            <h4 class="post-title text-center">What is HashMap?</h4>


                        </div>

                        <div class="card-body">

                            <img class="card-img-top my-2" src="img/HashMap.png" alt="Card image cap">


                            <div class="row my-3 row-user">
                                <div class="col-md-8">
                                   

                                    <p class="post-user-info"> <a href="#!">Agam Jain</a> has posted : </p>
                                </div>

                                <div class="col-md-4">
                                    <p class="post-date"> 12-8-2023 </p>
                                </div>
                            </div>


                            <p class="post-content">Java HashMap is similar to HashTable, but it is unsynchronized. It allows to store the null keys as well, but there should be only one null key object and there can be any number of null values. This class makes no guarantees as to the order of the map. To use this class and its methods, you need to import java.util.HashMap package or its superclass.</p> 

                            <br>
                            <br>

                            <div class="post-code">
                                <pre>// Java program to illustrate HashMap class of java.util
// package
  
// Importing HashMap class
import java.util.HashMap;
  
// Main class
public class GFG {
  
    // Main driver method
    public static void main(String[] args)
    {
        // Create an empty hash map by declaring object
        // of string and integer type
        HashMap<String, Integer> map = new HashMap<>();
  
        // Adding elements to the Map
        // using standard put() method
        map.put("vishal", 10);
        map.put("sachin", 30);
        map.put("vaibhav", 20);
  
        // Print size and content of the Map
        System.out.println("Size of map is:- "
                           + map.size());
  
        // Printing elements in object of Map
        System.out.println(map);
  
        // Checking if a key is present and if
        // present, print value by passing
        // random element
        if (map.containsKey("vishal")) {
  
            // Mapping
            Integer a = map.get("vishal");
  
            // Printing value for the corresponding key
            System.out.println("value for key"
                               + " \"vishal\" is:- " + a);
        }
    }
}</pre>
                            </div>

                        </div>
                        <div class="card-footer primary-background">


                           

                            <a href="#!"  class="btn btn-outline-light btn-sm"> <i class="fa fa-thumbs-o-up"></i> <span class="like-counter">120</span>  </a>
                            <a href="#!" class="btn btn-outline-light btn-sm"> <i class="fa fa-commenting-o"></i> <span>20</span>  </a>



                        </div>



                    </div>


                </div>

            </div>

        </div>

        

        
        
        

<!-- end of main content of body-->