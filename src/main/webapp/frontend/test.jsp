<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <%@ include file="../frontend/layout/style.jsp" %>
    </head>

    <body>
        <!-- ======= Header ======= -->
        <%@ include file="../frontend/layout/partials/header.jsp" %>
            <!-- End Header -->

		<section>
            <div class="container" style="width: 70%">
            
            <h1> ${postList.size()}</h1>
           

                <c:forEach var="post" items="${postList}">
                    <!-- <div class="border shadow-sm m-1 bg-white rounded"
							style="background-color: white; height: 130px; width: 140px;">
							<div>
								<h4>${ban.getMaBan()}</h4>
							</div>
							<div>
								<p>${ban.getTrangThai()}</p>
							</div>
							<div>
								<a href="/quanlycafe/main?idBan=${ban.getMaBan()}"
									class="btn btn-primary">Äáº·t bÃ n</a>
							</div>
						</div> -->
						

                    <div class="shadow-lg p-3 mb-5 bg-white rounded m-5">
                        <div>
                            <div class="row">
                                <div class="col">
                                    <h4>${post.getTitle()}</h4>
                                </div>
                                <div class="col" style="text-align: right;">
                                    <span style="font-size: 30px; font-weight: bold; margin-top: 0px;">...</span>
                                </div>
                            </div>

                            <span style="color: darkgray;"></span>
                    
                             
                        </div>
                        <div>
                            <h6 style="color: rgb(38, 56, 224);"></h6>
                        </div>
                        <div>
                            <p>
                            	
                            </p>
                        </div>
                    </div>

                </c:forEach>
            </div>
            </section>

            <!-- ======= Footer ======= -->
            <%@ include file="../frontend/layout/partials/footer.jsp" %>
                <!-- End Footer -->

                <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
                <%@ include file="../frontend/layout/script.jsp" %>
    </body>

    </html>