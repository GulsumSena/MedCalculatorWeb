<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GRACE</title>

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
	integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" href="style.css">

</head>
<body>
<div class="container">
		<form action="/Ferritin/grace" method="post">
		<br><br>
		<h3 class="link-primary">GRACE SKORU HESAPLIYORSUNUZ:</h3>
			<div class="row g-2">
				<label>Muayene Tarihi Seçiniz:</label>
				<div class="col-auto">
					<select class="form-select" aria-label="Default select example" name="day">
						<option selected>Gün</option>
						<option value="0">Bugun Olarak Ayarla</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
						<option value="24">24</option>
						<option value="25">25</option>
						<option value="26">26</option>
						<option value="27">27</option>
						<option value="28">28</option>
						<option value="29">29</option>
						<option value="30">30</option>
						<option value="31">31</option>
					</select>
				</div>

				<div class="col-auto">
					<select class="form-select" aria-label="Default select example" name="month">
						<option selected>Ay</option>
						<option value="0">Bugun Olarak Ayarla</option>
						<option value="1">Ocak</option>
						<option value="2">Şubat</option>
						<option value="3">Mart</option>
						<option value="4">Nisan</option>
						<option value="5">Mayıs</option>
						<option value="6">Haziran</option>
						<option value="7">Temmuz</option>
						<option value="8">Ağustos</option>
						<option value="9">Eylül</option>
						<option value="10">Ekim</option>
						<option value="11">Kasım</option>
						<option value="12">Aralık</option>
					</select>
				</div>

				<div class="col-auto">
					<select class="form-select" aria-label="Default select example" name="year">
						<option selected>Yıl<option>
						<option value="0">Bugun Olarak Ayarla</option>
						<option value="2021">2021</option>
						<option value="2022">2022</option>
						<option value="2023">2023</option>
						<option value="2024">2024</option>
					</select>
				</div>
			</div>

			<br>

			<div class="row g-2">
				<div class="col-auto">
					<label>Hasta Bilgileri Giriniz: </label>
				</div>
			</div>

			<div class="row g-2">
				<div class="col-auto">
					<label>Ad: </label>
					<input type="text" name="name" required>
				</div>

				<div class="col-auto">
					<label>Yaş: </label>
					<input type="text" name="age" required>
				</div>
			</div>
			<br><hr/><br>
			<div class="input-group mb-3 ">
			
				<label class="input-group-text" for="inputGroupSelect01">YAS?</label> <select class="form-select" name="yas">
					<option selected>Seçiniz...</option>
					<option value="8">30-39</option>
					<option value="25">40-49</option>
					<option value="41">50-59</option>
					<option value="58">60-69</option>
					<option value="75">70-79</option>
					<option value="91">80-89</option>
					<option value="100">>90</option>
				</select>
			</div>

			<div class="input-group mb-3">
				<label class="input-group-text" for="inputGroupSelect01">KALP ATIM HIZI</label><select class="form-select" name="kalp">
					<option selected>Seçiniz...</option>
					<option value="0"><50</option>
					<option value="3">50-69</option>
					<option value="9">70-89</option>
					<option value="15">90-109</option>
					<option value="24">110-149</option>
					<option value="38">150-199</option>
					<option value="46">>200</option>
				</select>
			</div>

			<div class="input-group mb-3">
				<label class="input-group-text" for="inputGroupSelect01">SISTOLIK KAN BASINCI</label> <select class="form-select" name="sistolik">
					<option selected>Seçiniz...</option>
					<option value="58"><80</option>
					<option value="53">80-99</option>
					<option value="43">100-119</option>
					<option value="34">120-139</option>
					<option value="24">140-159</option>
					<option value="10">160-199</option>
					<option value="0">>200</option>
				</select>
			</div>

			<div class="input-group mb-3">
				<label class="input-group-text" for="inputGroupSelect01">KREATININ</label>
					<select class="form-select" name="kreatinin">
					<option selected>Seçiniz...</option>
					<option value="1">0.0-0.39</option>
					<option value="4">0.4-0.79</option>
					<option value="7">0.8-1.19</option>
					<option value="10">1.2-1.59</option>
					<option value="13">1.6-1.99</option>
					<option value="21">2-3.99</option>
					<option value="28">>4</option>
				</select>
			</div>

			<div class="input-group mb-3">
				<label class="input-group-text" for="inputGroupSelect01">KILLIP SINIFI</label>
					<select	class="form-select" name="killip">
					<option selected>Seçiniz...</option>
					<option value="0">SINIF-I</option>
					<option value="20">SINIF-II</option>
					<option value="39">SINIF-III</option>
					<option value="59">SINIF-IV</option>
				</select>
			</div>

			<div class="input-group mb-3">
				<label class="input-group-text" for="inputGroupSelect01">BASVURU SIRASINDA KARDIYAK ARREST VAR MI?</label>
					<select class="form-select"	name="arrest">
					<option selected>Seçiniz...</option>
					<option value="0">YOK</option>
					<option value="39">VAR</option>
				</select>
			</div>

			<div class="input-group mb-3">
				<label class="input-group-text" for="inputGroupSelect01">KARDIYAK TROPONINLERDE YUKSELME VAR MI? </label>
					<select class="form-select" name="trop">
					<option selected>Seçiniz...</option>
					<option value="0">HAYIR</option>
					<option value="14">EVET</option>
				</select>
			</div>
			
			<div class="input-group mb-3">
				<label class="input-group-text" for="inputGroupSelect01">ST SEGMENT DEGISIKLIGI VAR MI? </label>
					<select class="form-select" name="st">
					<option selected>Seçiniz...</option>
					<option value="0">HAYIR</option>
					<option value="39">EVET</option>
				</select>
			</div>

			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
				<button class="btn btn-danger">KAYDET VE HESAPLA</button>
				<br>
			</div>
		</form>
		<br>
		<div class="d-grid gap-2 d-md-flex justify-content-md-end">
				<a href="/Ferritin/Scores.jsp" class="btn btn-danger" tabindex="-1"
					role="button" aria-disabled="true"> VAZGEC </a>
		</div>
		<br><br><br>	
	</div>
</body>
</html>