<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2/21/2024
  Time: 10:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/create/createStyle.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Create</title>
</head>
<body>
<div class="container">
    <div class="nav-bar-top">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                    <span class="navbar-text"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16">
                        <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.6 17.6 0 0 0 4.168 6.608 17.6 17.6 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.68.68 0 0 0-.58-.122l-2.19.547a1.75 1.75 0 0 1-1.657-.459L5.482 8.062a1.75 1.75 0 0 1-.46-1.657l.548-2.19a.68.68 0 0 0-.122-.58zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.68.68 0 0 0 .178.643l2.457 2.457a.68.68 0 0 0 .644.178l2.189-.547a1.75 1.75 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.6 18.6 0 0 1-7.01-4.42 18.6 18.6 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877z"/>
                      </svg>
                        +84-918273645
                    </span>
                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <!-- <li class="nav-item">
                          <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#">Features</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#">Pricing</a>
                        </li> -->
                    </ul>
                    <ul class="navbar-nav mb-2 mb-lg-0 d-flex flex-row">
                        <li> <span class="navbar-text p-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
  <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951"/>
</svg>
                              </span></li>
                        <li><span class="navbar-text p-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
  <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.9 3.9 0 0 0-1.417.923A3.9 3.9 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.9 3.9 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.9 3.9 0 0 0-.923-1.417A3.9 3.9 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599s.453.546.598.92c.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.5 2.5 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.5 2.5 0 0 1-.92-.598 2.5 2.5 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233s.008-2.388.046-3.231c.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92s.546-.453.92-.598c.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92m-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217m0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334"/>
</svg>
                              </span></li>
                    </ul>

                </div>
            </div>
        </nav>
    </div>
    <div class="page sub-page">

        <!--*********************************************************************************************************-->
        <!--************ CONTENT ************************************************************************************-->
        <!--*********************************************************************************************************-->
        <section class="content" style="margin-bottom: 490.625px;">
            <section class="block">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <article class="blog-post clearfix">
                                <hr>
                                <div class="page-title text-danger">
                                    <div class="container">
                                        <h1>Add new place</h1>
                                    </div>
                                    <!--end container-->
                                </div>

                                <div class="image-input">
                                    <a href="#">
                                        <img class="image-input" src="https://cdn.tgdd.vn/Files/2019/10/31/1214275/tim-hieu-tinh-nang-wifi-location-tren-smartwatch-1.jpg">
                                    </a>
                                </div>

                                <div class="article-title">
                                    <form method="post">
                                        <select class="text-input" name="owners" id="owners">
                                            <option selected disabled hidden>select owner</option>
                                            <c:forEach items="${owners}" var="o">
                                                <option value="${o.id}">${o.name} - ${o.province} - ${o.phone}</option>
                                            </c:forEach>
                                        </select>
                                        <input class="text-input" type="text" name="picture" placeholder="picture link">
                                        <input class="text-input" type="text" name="customer_number" placeholder="số lượng người có thể ở">
                                        <input class="text-input" type="text" name="living_room" placeholder="số phòng khách">
                                        <input class="text-input" type="text" name="bed_room" placeholder="số phòng ngủ">
                                        <input class="text-input" type="text" name="bath_room" placeholder="số phòng tắm">
                                        <input class="text-input" type="text" name="toilet" placeholder="số phòng vệ sinh">
                                        <input class="text-input" type="text" name="address" placeholder="địa chỉ">
                                        <input class="text-input" type="text" name="price" placeholder="giá cho thuê ($)">
                                        <button type="submit" class="btn btn-danger text-input">Create</button>
                                    </form>

                                </div>

                                <!--end blog-post-content-->
                            </article>

                            <!--end Article-->

                            <hr>

                            <section>
                                <h2>Comments</h2>
                                <div class="comments">
                                    <div class="comment">
                                        <div class="author">
                                            <a href="#" class="author-image">
                                                <div class="background-image" style="background-image: url(&quot;assets/img/author-09.jpg&quot;);">
                                                    <img src="assets/img/author-09.jpg" alt="">
                                                </div>
                                            </a>
                                            <div class="author-description">
                                                <h3>Jane Doe</h3>
                                                <div class="meta">
                                                    <span>02.05.2017</span>
                                                </div>
                                                <!--end meta-->
                                                <p>
                                                    Nam pulvinar tortor nec lacinia efficitur. Integer erat tortor, ultricies
                                                    ut est vel, euismod imperdiet lacus. Aenean nec turpis condimentum, mollis
                                                    mauris id, scelerisque quam.
                                                </p>
                                            </div>
                                            <!--end author-description-->
                                        </div>
                                        <!--end author-->
                                    </div>
                                    <!--end comment-->

                                    <div class="comment">
                                        <div class="author">
                                            <a href="#" class="author-image">
                                                <div class="background-image" style="background-image: url(&quot;assets/img/author-05.jpg&quot;);">
                                                    <img src="assets/img/author-05.jpg" alt="">
                                                </div>
                                            </a>
                                            <div class="author-description">
                                                <h3>John Doe</h3>
                                                <div class="meta">
                                                    <span>02.05.2017</span>
                                                </div>
                                                <!--end meta-->
                                                <p>
                                                    Integer erat tortor, ultricies ut est vel, euismod imperdiet lacus.
                                                    Aenean nec turpis condimentum, mollis mauris id, scelerisque quam.
                                                </p>
                                            </div>
                                            <!--end author-description-->
                                        </div>
                                        <!--end author-->
                                    </div>
                                    <!--end comment-->

                                    <div class="comment">
                                        <div class="author">
                                            <a href="#" class="author-image">
                                                <div class="background-image" style="background-image: url(&quot;assets/img/author-04.jpg&quot;);">
                                                    <img src="assets/img/author-04.jpg" alt="">
                                                </div>
                                            </a>
                                            <div class="author-description">
                                                <h3>Susan Jefferson</h3>
                                                <div class="meta">
                                                    <span>02.05.2017</span>
                                                </div>
                                                <!--end meta-->
                                                <p>
                                                    Cras luctus aliquet fringilla. In eu cursus nunc. Quisque dolor leo,
                                                    vehicula a sem ut, aliquam pretium tellus. Morbi ut mi eleifend,
                                                    sollicitudin nisl in, elementum nisi. Praesent sed libero euismod,
                                                    pellentesque risus sit amet, faucibus lorem. Pellentesque bibendum
                                                    libero sed tempor tristique.
                                                </p>
                                            </div>
                                            <!--end author-description-->
                                        </div>
                                        <!--end author-->
                                    </div>
                                    <!--end comment-->

                                </div>
                                <!--end comments-->
                            </section>

                            <section>
                                <h2>Add Comment</h2>
                                <form class="form" novalidate="novalidate">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="name" class="col-form-label">Your Name</label>
                                                <input name="name" type="text" class="form-control" id="name" placeholder="Your Name">
                                            </div>
                                            <!--end form-group-->
                                        </div>
                                        <!--end col-md-6-->
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="email" class="col-form-label">Your Email</label>
                                                <input name="email" type="email" class="form-control" id="email" placeholder="Your Email">
                                            </div>
                                            <!--end form-group-->
                                        </div>
                                        <!--end col-md-6-->
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="comment" class="col-form-label">Your Comment</label>
                                                <textarea name="comment" id="comment" class="form-control" rows="4" placeholder="Your Comment"></textarea>
                                            </div>
                                            <!--end form-group-->
                                        </div>
                                        <!--end col-md-12-->
                                    </div>
                                    <!--end row-->
                                    <button type="submit" class="btn btn-primary float-right">Add Comment</button>
                                </form>
                                <!--end form-->
                            </section>
                        </div>
                        <!--end col-md-8-->

                        <div class="col-md-4">
                            <!--============ Side Bar ===============================================================-->
                            <aside class="sidebar">
                                <section>
                                    <h2 class="text-danger">Search</h2>
                                    <!--============ Side Bar Search Form ===========================================-->
                                    <form class="sidebar-form form" novalidate="novalidate">
                                        <div class="form-group">
                                            <label for="what" class="col-form-label">What?</label>
                                            <input name="keyword" type="text" class="form-control" id="what" placeholder="Enter keyword and press enter">
                                        </div>
                                        <!--end form-group-->
                                    </form>
                                    <!--============ End Side Bar Search Form =======================================-->
                                </section>
                                <section>
                                    <h2 class="text-danger">Popular</h2>
                                    <div class="sidebar-post">
                                        <a href="#"  style="background-image: url(&quot;https://leisurepools.eu/wp-content/uploads/2020/06/best-type-of-swimming-pool-for-my-home_2.jpg&quot;);">
                                            <img class="background-image1" src="https://leisurepools.eu/wp-content/uploads/2020/06/best-type-of-swimming-pool-for-my-home_2.jpg">
                                        </a>
                                        <!--end background-image-->
                                        <div class="description">
                                            <h4>
                                                <a href="#">How to build a cool swimming pool</a>
                                            </h4>
                                            <div class="meta">
                                                <a href="#">John Doe</a>
                                                <figure>02.05.2017</figure>
                                            </div>
                                            <!--end meta-->
                                        </div>
                                        <!--end description-->
                                    </div>
                                    <!--end sidebar-post-->

                                    <div class="sidebar-post">
                                        <a href="#" class="background-image" style="background-image: url(&quot;assets/img/blog-image-04.jpg&quot;);">
                                            <img class="background-image1" src="https://hoangminhdecor.com/wp-content/uploads/2020/09/decor-phong-khach.png">
                                        </a>
                                        <!--end background-image-->
                                        <div class="description">
                                            <h4>
                                                <a href="#">Concrete decorations can be beautiful</a>
                                            </h4>
                                            <div class="meta">
                                                <a href="#">John Doe</a>
                                                <figure>02.05.2017</figure>
                                            </div>
                                            <!--end meta-->
                                        </div>
                                        <!--end description-->
                                    </div>
                                    <!--end sidebar-post-->

                                    <div class="sidebar-post">
                                        <a href="#" class="background-image" style="background-image: url(&quot;assets/img/blog-image-05.jpg&quot;);">
                                            <img class="background-image1" src="https://barrister-suites.com/wp-content/uploads/2016/06/BarristerSuites-TakingBreaks.jpg">
                                        </a>
                                        <!--end background-image-->
                                        <div class="description">
                                            <h4>
                                                <a href="blog-post.html">Let’s take a break</a>
                                            </h4>
                                            <div class="meta">
                                                <a href="#">John Doe</a>
                                                <figure>02.05.2017</figure>
                                            </div>
                                            <!--end meta-->
                                        </div>
                                        <!--end description-->
                                    </div>
                                    <!--end sidebar-post-->

                                </section>

                                <section>
                                    <h2>Popular Post</h2>
                                    <ul class="sidebar-list list-unstyled">
                                        <li>
                                            <a href="#">January 2017<span>4</span></a>
                                        </li>
                                        <li>
                                            <a href="#">February 2017<span>12</span></a>
                                        </li>
                                        <li>
                                            <a href="#">October 2016<span>8</span></a>
                                        </li>
                                        <li>
                                            <a href="#">August 2016<span>3</span></a>
                                        </li>
                                        <li>
                                            <a href="#">May 2016<span>11</span></a>
                                        </li>
                                    </ul>
                                </section>
                            </aside>
                            <!--============ End Side Bar ===========================================================-->
                        </div>
                        <!--end col-md-4-->
                    </div>
                </div>
                <!--end container-->
            </section>
            <!--end block-->
        </section>
        <!--end content-->

        <!--*********************************************************************************************************-->
        <!--************ FOOTER *************************************************************************************-->
        <!--*********************************************************************************************************-->
        <footer class="footer">
            <div class="wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-md-5">
                            <a href="#" class="brand">
                                <img src="assets/img/logo.png" alt="">
                            </a>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nec tincidunt arcu, sit amet
                                fermentum sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra.
                            </p>
                        </div>
                        <!--end col-md-5-->
                        <div class="col-md-3">
                            <h2>Navigation</h2>
                            <div class="row">
                                <div class="col-md-6 col-sm-6">
                                    <nav>
                                        <ul class="list-unstyled">
                                            <li>
                                                <a href="#">Home</a>
                                            </li>
                                            <li>
                                                <a href="#">Listing</a>
                                            </li>
                                            <li>
                                                <a href="#">Pages</a>
                                            </li>
                                            <li>
                                                <a href="#">Extras</a>
                                            </li>
                                            <li>
                                                <a href="#">Contact</a>
                                            </li>
                                            <li>
                                                <a href="#">Submit Ad</a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <nav>
                                        <ul class="list-unstyled">
                                            <li>
                                                <a href="#">My Ads</a>
                                            </li>
                                            <li>
                                                <a href="#">Sign In</a>
                                            </li>
                                            <li>
                                                <a href="#">Register</a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <!--end col-md-3-->
                        <div class="col-md-4">
                            <h2>Contact</h2>
                            <address>
                                <figure>
                                    124 Abia Martin Drive<br>
                                    New York, NY 10011
                                </figure>
                                <br>
                                <strong>Email:</strong> <a href="#">hello@example.com</a>
                                <br>
                                <strong>Skype: </strong> Craigs
                                <br>
                                <br>
                                <a href="contact.html" class="btn btn-primary text-caps btn-framed">Contact Us</a>
                            </address>
                        </div>
                        <!--end col-md-4-->
                    </div>
                    <!--end row-->
                </div>
                <div class="background">
                    <div class="background-image original-size" style="background-image: url(&quot;assets/img/footer-background-icons.jpg&quot;);">
                        <img src="assets/img/footer-background-icons.jpg" alt="">
                    </div>
                    <!--end background-image-->
                </div>
                <!--end background-->
            </div>
        </footer>
        <!--end footer-->
    </div>

</div>










<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
