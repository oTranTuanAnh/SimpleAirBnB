<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2/21/2024
  Time: 11:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Đặt phòng</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/detail/detailStyle.css">
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
                                        <h3>${owner.getProvince()}</h3>
                                    </div>
                                    <!--end container-->
                                </div>
                                <div class="showitem clearfix">
                                    <div class="row">
                                        <div class="rounded-4 img-infor">
                                            <img  src="${houses.getPicture()}" width="700" height="500">
                                        </div>
                                            <div class="col-md-8">
                                                <h5>${houses.getAddress()}</h5>
                                                <h6>${houses.getLivingRoom()} khách - ${houses.getBedRoom()} ngủ - ${houses.getBathRoom()} tắm -
                                                        ${houses.getToilet()} vệ sinh</h6>
                                                <h6>${houses.getPrice()} $/đêm</h6>
                                            </div>
                                        <div class="col-md-4">

                                            <div class="d-grid gap-2 d-md-block">
                                                <button class="btn btn-danger" type="submit" href="#">Edit</button>
                                                <a class="link-underline-opacity-0" href="/houses?action=delete&id=${houses.getId()}"><button class="btn btn-danger" type="button">Delete</button></a>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="media">
                                    <div class="mr-3">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
                                            <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/>
                                        </svg>
                                    </div>

                                    <div class="media-body">
                                        <h5 class="mt-0 mb-0 media-text5">Hosted by ${owner.getName()}</h5>
                                        <span class="rating">
                                             <c:forEach items="${stars}" var="s">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                                  </svg>
                                             </c:forEach>
                                            <em>${reviews} reviews</em></span>
                                        <h6 class="mt-0 mb-0 media-text6"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-telephone-plus" viewBox="0 0 16 16">
                                            <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.6 17.6 0 0 0 4.168 6.608 17.6 17.6 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.68.68 0 0 0-.58-.122l-2.19.547a1.75 1.75 0 0 1-1.657-.459L5.482 8.062a1.75 1.75 0 0 1-.46-1.657l.548-2.19a.68.68 0 0 0-.122-.58zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.68.68 0 0 0 .178.643l2.457 2.457a.68.68 0 0 0 .644.178l2.189-.547a1.75 1.75 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.6 18.6 0 0 1-7.01-4.42 18.6 18.6 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877z"/>
                                            <path fill-rule="evenodd" d="M12.5 1a.5.5 0 0 1 .5.5V3h1.5a.5.5 0 0 1 0 1H13v1.5a.5.5 0 0 1-1 0V4h-1.5a.5.5 0 0 1 0-1H12V1.5a.5.5 0 0 1 .5-.5"/>
                                        </svg>   ${owner.getPhone()}  </h6>
                                        <p class="mb-1"><small class="text-muted"><a href="#">See more</a></small></p>
                                        <p>
                                            Professionally impact cooperative best practices after viral functionalities. Credibly maximize timely technologies without cutting-edge services. Proactively actualize viral web services without innovative architectures.
                                        </p>

                                    </div>
                                </div>
                                <hr>
                                <div class="media">
                                    <div class="mr-3">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-door-open" viewBox="0 0 16 16">
                                            <path d="M8.5 10c-.276 0-.5-.448-.5-1s.224-1 .5-1 .5.448.5 1-.224 1-.5 1"/>
                                            <path d="M10.828.122A.5.5 0 0 1 11 .5V1h.5A1.5 1.5 0 0 1 13 2.5V15h1.5a.5.5 0 0 1 0 1h-13a.5.5 0 0 1 0-1H3V1.5a.5.5 0 0 1 .43-.495l7-1a.5.5 0 0 1 .398.117M11.5 2H11v13h1V2.5a.5.5 0 0 0-.5-.5M4 1.934V15h6V1.077z"/>
                                        </svg>
                                    </div>

                                    <div class="media-body">
                                        <h5 class="mt-0 mb-0 media-text">Self check-in </h5>
                                        <p>
                                            Professionally impact cooperative best practices after viral functionalities. Credibly maximize timely technologies without cutting-edge services. Proactively actualize viral web services without innovative architectures.
                                        </p>
                                    </div>

                                </div>
                                <div class="media">
                                    <div class="mr-3">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-hand-thumbs-up" viewBox="0 0 16 16">
                                            <path d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2 2 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a10 10 0 0 0-.443.05 9.4 9.4 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a9 9 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.2 2.2 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.9.9 0 0 1-.121.416c-.165.288-.503.56-1.066.56z"/>
                                        </svg>
                                    </div>

                                    <div class="media-body">
                                        <h5 class="mt-0 mb-0 media-text">${owner.getName()} is a Superhost </h5>
                                        <p>
                                            Professionally impact cooperative best practices after viral functionalities. Credibly maximize timely technologies without cutting-edge services. Proactively actualize viral web services without innovative architectures.
                                        </p>
                                    </div>

                                </div>
                                <div class="media">
                                    <div class="mr-3">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-calendar" viewBox="0 0 16 16">
                                            <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5M1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4z"/>
                                        </svg>
                                    </div>

                                    <div class="media-body">
                                        <h5 class="mt-0 mb-0 media-text">Free cancellation </h5>
                                        <p>
                                            Professionally impact cooperative best practices after viral functionalities. Credibly maximize timely technologies without cutting-edge services. Proactively actualize viral web services without innovative architectures.
                                        </p>
                                    </div>
                                </div>

                            </article>

                            <!--end Article-->

                            <hr>
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
                            <div class="payment-form">
                                <section class="payment-form">
                                    <div class="container">
                                        <div class="block-heading">
                                            <h2>Payment</h2>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quam urna, dignissim nec auctor in, mattis vitae leo.</p>
                                        </div>
                                        <form>
                                            <div class="products">
                                                <h3 class="title">Checkout</h3>
                                                <div class="item">
                                                    <span class="price">$200</span>
                                                    <p class="item-name">Product 1</p>
                                                    <p class="item-description">Lorem ipsum dolor sit amet</p>
                                                </div>
                                                <div class="item">
                                                    <span class="price">$120</span>
                                                    <p class="item-name">Product 2</p>
                                                    <p class="item-description">Lorem ipsum dolor sit amet</p>
                                                </div>
                                                <div class="total">Total<span class="price">$320</span></div>
                                            </div>
                                            <div class="card-details">
                                                <h3 class="title">Credit Card Details</h3>
                                                <div class="row">
                                                    <div class="form-group col-sm-7">
                                                        <label for="card-holder">Card Holder</label>
                                                        <input id="card-holder" type="text" class="form-control" placeholder="Card Holder" aria-label="Card Holder" aria-describedby="basic-addon1">
                                                    </div>
                                                    <div class="form-group col-sm-5">
                                                        <label >Expiration Date</label>
                                                        <div class="input-group expiration-date">
                                                            <input type="text" class="form-control" placeholder="MM" aria-label="MM" aria-describedby="basic-addon1">
                                                            <span class="date-separator">/</span>
                                                            <input type="text" class="form-control" placeholder="YY" aria-label="YY" aria-describedby="basic-addon1">
                                                        </div>
                                                    </div>
                                                    <div class="form-group col-sm-8">
                                                        <label for="card-number">Card Number</label>
                                                        <input id="card-number" type="text" class="form-control" placeholder="Card Number" aria-label="Card Holder" aria-describedby="basic-addon1">
                                                    </div>
                                                    <div class="form-group col-sm-4">
                                                        <label for="cvc">CVC</label>
                                                        <input id="cvc" type="text" class="form-control" placeholder="CVC" aria-label="Card Holder" aria-describedby="basic-addon1">
                                                    </div>
                                                    <div class="form-group col-sm-12">
                                                        <button type="button" class="btn btn-primary btn-block">Proceed</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </section>

                            </div>
                        </div>
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
                                <img src="" alt="">
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
<%--                <div class="background">--%>
<%--                    <div class="background-image original-size" style="background-image: url(&quot;assets/img/footer-background-icons.jpg&quot;);">--%>
<%--                        <img src="assets/img/footer-background-icons.jpg" alt="">--%>
<%--                    </div>--%>
<%--                    <!--end background-image-->--%>
<%--                </div>--%>
                <!--end background-->
            </div>
        </footer>
        <!--end footer-->
    </div>

</div></h1>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
