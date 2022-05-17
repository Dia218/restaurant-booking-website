<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>reservationListAdmin</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/resources/static/css/styles.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <style>
        body {
            background-image: url("${pageContext.request.contextPath}/resources/static/assets/img/res.png");
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
    <a class="navbar-brand ps-3" href="../index.jsp">A's kitchen</a>
    <!-- Sidebar Toggle-->
    <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0 " style="margin-left: 5%" id="sidebarToggle"
            href="#!"><i class="fas fa-bars"></i></button>
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
                <li><a class="dropdown-item" href="../index.jsp">Logout</a></li>
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
                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                        예약수정
                    </a>
                    <a class="nav-link collapsed" href="reservationListAdmin.jsp">
                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                        예약조회
                    </a>
                    <div class="sb-sidenav-menu-heading">통계</div>
                    <a class="nav-link" href="statistics.jsp">
                        <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                        통계보기
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
                        관리자 예약조회 화면
                    </div>
                </div>
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        예약조회
                    </div>
                    <div class="card-body">
                        <script>
                            let db = [
                                {
                                    index: 1,
                                    name: '김oo',
                                    phone: '010-0000-5992',
                                    date: '2022-01-01',
                                    time: '17:00',
                                    table: '1',
                                },
                                {
                                    index: 2,
                                    name: '민oo',
                                    phone: '010-0000-5992',
                                    date: '2022-01-01',
                                    time: '17:00',
                                    table: '1',
                                },
                                {
                                    index: 3,
                                    name: '강oo',
                                    phone: '010-1124-1321',
                                    date: '2022-03-11',
                                    time: '20:00',
                                    table: '1',
                                },
                                {
                                    index: 4,
                                    name: '김oo',
                                    phone: '010-1234-1321',
                                    date: '2022-02-15',
                                    time: '17:00',
                                    table: '5',
                                },
                                {
                                    index: 5,
                                    name: '박oo',
                                    phone: '010-1634-1021',
                                    date: '2022-01-18',
                                    time: '17:00',
                                    table: '1',
                                },
                                {
                                    index: 6,
                                    name: '구oo',
                                    phone: '010-8134-1321',
                                    date: '2022-07-18',
                                    time: '15:00',
                                    table: '1',
                                },
                                {
                                    index: 7,
                                    name: '최oo',
                                    phone: '010-0000-1321',
                                    date: '2022-01-18',
                                    time: '17:00',
                                    table: '1',
                                },
                                {
                                    index: 8,
                                    name: '이oo',
                                    phone: '010-9999-1321',
                                    date: '2022-08-18',
                                    time: '16:00',
                                    table: '1',
                                },
                                {
                                    index: 9,
                                    name: '최oo',
                                    phone: '010-1134-1321',
                                    date: '2022-04-18',
                                    time: '20:00',
                                    table: '1',
                                },
                                {
                                    index: 10,
                                    name: '김oo',
                                    phone: '010-1134-1321',
                                    date: '2022-05-18',
                                    time: '20:00',
                                    table: '1',
                                },
                                {
                                    index: 11,
                                    name: '장oo',
                                    phone: '010-1134-1321',
                                    date: '2022-02-18',
                                    time: '20:00',
                                    table: '1',
                                },
                                {
                                    index: 12,
                                    name: '최oo',
                                    phone: '010-1134-1321',
                                    date: '2022-04-18',
                                    time: '18:00',
                                    table: '1',
                                },
                                {
                                    index: 13,
                                    name: '최oo',
                                    phone: '010-1134-1321',
                                    date: '2022-05-18',
                                    time: '17:00',
                                    table: '1',
                                },
                                {
                                    index: 14,
                                    name: '민oo',
                                    phone: '010-1134-1321',
                                    date: '2022-04-18',
                                    time: '20:00',
                                    table: '1',
                                },
                                {
                                    index: 15,
                                    name: '박oo',
                                    phone: '010-1134-1321',
                                    date: '2022-05-18',
                                    time: '20:00',
                                    table: '1',
                                },
                                {
                                    index: 16,
                                    name: '강oo',
                                    phone: '010-1134-1321',
                                    date: '2022-06-18',
                                    time: '20:00',
                                    table: '1',
                                },
                                {
                                    index: 17,
                                    name: '최oo',
                                    phone: '010-1134-1321',
                                    date: '2022-11-18',
                                    time: '19:00',
                                    table: '1',
                                }
                            ]

                            document.write('<table border="1" id="datatablesSimple">');
                            // thead
                            document.write('<thead>');
                            document.write('<tr>');
                            document.write('<th>INDEX</th>');
                            document.write('<th>이름</th>');
                            document.write('<th>폰번호</th>');
                            document.write('<th>날짜</th>');
                            document.write('<th>시간</th>');
                            document.write('<th>테이블번호</th>');
                            document.write('</tr>');
                            document.write('</thead>');

                            // tbody
                            document.write('<tbody>');
                            for (let i = 0; i < db.length; i++) {
                                document.write('<tr>');
                                //   db[i] 값에서 value들만 저장한 배열
                                const data = Object.values(db[i]);
                                for (let j = 0; j < Object.keys(db[i]).length; j++) {
                                    document.write('<td>');
                                    document.write(data[j]);
                                    document.write('</td>');
                                }
                                document.write('</tr>')
                            }
                            document.write('</table>');
                        </script>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/scripts.js"></script>
<script src="${pageContext.request.contextPath}/resources/static/assets/demo/datatables-simple-demo.js"></script>
</body>
</html>

