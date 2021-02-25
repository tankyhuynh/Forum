<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

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
            <div class="container">

                <c:forEach var="ban" items="${banList}">
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
						

                    <div class="shadow-lg p-3 mb-5 bg-white rounded m-5" style=" width: 600px;">
                        <div>
                            <div class="row">
                                <div class="col">
                                    <h4>${ ban.id }</h4>
                                </div>
                                <div class="col" style="text-align: right;">
                                    <span style="font-size: 30px; font-weight: bold; margin-top: 0px;">...</span>
                                </div>
                            </div>

                            <span style="color: darkgray;">${ ban.time }</span>
                    
                             
                        </div>
                        <div>
                            <h6 style="color: rgb(38, 56, 224);">${ ban.title }</h6>
                        </div>
                        <div>
                            <p>
                            	${ ban.content }
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