<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>寵物論壇</title>

<!-- web icon -->
<link rel="icon" href="/PetForum/assets/favicon.ico">

<!-- bootstrap 5.1.3 CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<!-- bootstrap 5.1.3 JS -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<!-- 自訂CSS -->
<link rel="stylesheet" href="/PetForum/css/index.css">

</head>

<body>

	<header class="p-3 mb-3 border-bottom">
		<div class="container">
			<div
				class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
				<ul
					class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
					<li><a href="/PetForum/" class="nav-link px-2 link-secondary">寵物論壇</a></li>
					<li><a href="/PetForum/pages/showPet.jsp"
						class="nav-link px-2 link-dark">曬寵物</a></li>
					<li><a href="/PetForum/pages/showUser.jsp"
						class="nav-link px-2 link-dark">看看這裡有誰?</a></li>
				</ul>
				<div class="dropdown text-end">
					<a href="/PetForum/pages/login.jsp">
						<button class="btn btn-primary">會員登入</button>
					</a>
				</div>
			</div>
		</div>
	</header>

	<main>
		<div
			class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center backgroundImg">
			<div class="col-md-5 p-lg-5 mx-auto my-5">
				<h1 class="display-4 fw-normal text-light">寵物論壇</h1>
				<p class="lead fw-normal text-light">我家的貓咪會寫JAVA!!</p>
				<a class="btn btn-warning" href="/PetForum/pages/showPet.jsp">快來康康!</a>
			</div>
		</div>
	</main>

	<footer class="footer mt-5 py-3 bg-black ">
		<div class="container text-center">
			<span class=" text-light">Copyright © 2022 iSpan. All rights
				reserved.</span>
		</div>
	</footer>
</body>

</html>

