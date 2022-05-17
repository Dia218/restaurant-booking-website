<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>reservationListGuest</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/style.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resources/static/css/styles.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <style>
        body {
            background-image: url('${pageContext.request.contextPath}/resources/static/assets/img/res.png');
            background-size: cover;
            background-repeat: no-repeat;
        }
        .dataTable-table > thead > tr > th {
            vertical-align: bottom;
            text-align: center;
            border-bottom: none;
        }

        .dataTable-table > tbody > tr > td {
            vertical-align: bottom;
            text-align: center;
            border-bottom: none;
        }

    </style>
</head>
<body class="sb-nav-fixed">
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <!-- Navbar Brand-->
    <a class="navbar-brand ps-3" href="index.jsp">A's kitchen</a>
    <!-- Sidebar Toggle-->
    <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0 " id="sidebarToggle" href="#!"><i
            class="fas fa-bars"></i></button>
    <!-- Navbar Search-->
    <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
        <div class="input-group">
            <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..."
                   aria-describedby="btnNavbarSearch"/>
            <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
        </div>
    </form>

    <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown"
               aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="index.jsp">Logout</a></li>
            </ul>
        </li>
    </ul>
</nav>
<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <div class="nav">
                    <div class="sb-sidenav-menu-heading">예약</div>
                    <a class="nav-link" href="createReservationAdmin.jsp">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        예약생성
                    </a>
                    <a class="nav-link collapsed" href="#">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        예약수정
                    </a>
                    <a class="nav-link collapsed" href="reservationListGuest.jsp">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        예약조회
                    </a>
                    <div class="sb-sidenav-menu-heading">후기</div>
                    <a class="nav-link" href="reviewBoard.jsp">
                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                        후기작성
                    </a>
                </div>
            </div>

        </nav>
    </div>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4" style="color:#fff;">예약조회</h1>

                <div class="card mb-4">
                    <div class="card-body">
                        고객 예약조회 화면
                    </div>
                </div>
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        예약조회
                    </div>
                    <div class="card-body">
                        <table class="table">
                            <thead>
                            <tr class="table-secondary">
                                <th scope="col">이름</th>
                                <th scope="col">전화번호</th>
                                <th scope="col">날짜</th>
                                <th scope="col">시간</th>
                                <th scope="col">테이블 번호</th>
                            </tr>
                            </thead>
                            <tbody>
                            <!--                        링크에 예약수정 페이지-->
                            <tr style="cursor:pointer;" onClick=" location.href='#' ">
                                <td>민OO</td>
                                <td>010-1234-5678</td>
                                <td>2022-04-25</td>
                                <td>17:00</td>
                                <td>1</td>
                            </tr>
                            <tr style="cursor:pointer;" onClick=" location.href='#' ">
                                <td>민OO</td>
                                <td>010-1234-5678</td>
                                <td>2022-05-12</td>
                                <td>17:00</td>
                                <td>4</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/scripts.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/static/assets/demo/datatables-simple-demo.js"></script>
</body>
</html>
