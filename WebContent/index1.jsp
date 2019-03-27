<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search in Blockchain</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入 Bootstrap -->
<link rel="stylesheet" href="css/image.css">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<!-- <script type="text/javascript"
	src="http://www.imooc.com/data/jquery-1.8.2.min.js"></script> -->
<script src="https://code.jquery.com/jquery.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript" src="js/image.js"></script>
<style>

/*实现3D样式翻转效果  */
*, *:before, *:after {
	box-sizing: border-box;
}

html {
	font-size: 18px;
	line-height: 1.5;
	font-weight: 300;
	color: #333;
	font-family: "Nunito Sans", sans-serif;
}

body {
	margin: 0;
	padding: 0;
	height: 100vh;
	background-color: #ecf0f9;
	background-attachment: fixed;
}

.content {
	display: flex;
	margin: 0 auto;
	justify-content: center;
	align-items: center;
	flex-wrap: wrap;
	max-width: 1000px;
}

.heading {
	width: 100%;
	margin-left: 1rem;
	font-weight: 900;
	font-size: 1.618rem;
	text-transform: uppercase;
	letter-spacing: .1ch;
	line-height: 1;
	padding-bottom: .5em;
	margin-bottom: 1rem;
	position: relative;
}

.heading:after {
	display: block;
	content: '';
	position: absolute;
	width: 60px;
	height: 4px;
	background: linear-gradient(135deg, #1a9be6, #1a57e6);
	bottom: 0;
}

.description {
	width: 100%;
	margin-top: 0;
	margin-left: 1rem;
	margin-bottom: 3rem;
}

.card {
	color: inherit;
	cursor: pointer;
	width: calc(33% - 2rem);
	min-width: calc(33% - 2rem);
	height: 400px;
	min-height: 400px;
	perspective: 1000px;
	margin: 1rem;
	position: relative;
}

@media screen and (max-width: 800px) {
	.card {
		width: calc(50% - 2rem);
	}
}

@media screen and (max-width: 500px) {
	.card {
		width: 100%;
	}
}

.front, .back {
	display: flex;
	border-radius: 6px;
	background-position: center;
	background-size: cover;
	text-align: center;
	justify-content: center;
	align-items: center;
	position: absolute;
	height: 100%;
	width: 100%;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	transform-style: preserve-3d;
	transition: ease-in-out 600ms;
}

.front {
	background-size: cover;
	padding: 2rem;
	font-size: 1.618rem;
	font-weight: 600;
	color: #fff;
	overflow: hidden;
	font-family: Poppins, sans-serif;
}

.front:before {
	position: absolute;
	display: block;
	content: '';
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: linear-gradient(135deg, #1a9be6, #1a57e6);
	opacity: .25;
	z-index: -1;
}

.card:hover .front {
	transform: rotateY(180deg);
}

.card:nth-child(even):hover .front {
	transform: rotateY(-180deg);
}

.back {
	background: #fff;
	transform: rotateY(-180deg);
	padding: 0 2em;
}

.card:hover .back {
	transform: rotateY(0deg);
}

.card:nth-child(even) .back {
	transform: rotateY(180deg);
}

.card:nth-child(even):hover .back {
	transform: rotateY(0deg);
}

.button {
	transform: translateZ(40px);
	cursor: pointer;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	font-weight: bold;
	color: #fff;
	padding: .5em 1em;
	border-radius: 100px;
	font: inherit;
	background: linear-gradient(135deg, #1a9be6, #1a57e6);
	border: none;
	position: relative;
	transform-style: preserve-3d;
	transition: 300ms ease;
}

.button:before {
	transition: 300ms ease;
	position: absolute;
	display: block;
	content: '';
	transform: translateZ(-40px);
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	height: calc(100% - 20px);
	width: calc(100% - 20px);
	border-radius: 100px;
	left: 10px;
	top: 16px;
	box-shadow: 0 0 10px 10px rgba(26, 87, 230, 0.25);
	background-color: rgba(26, 87, 230, 0.25);
}

.button:hover {
	transform: translateZ(55px);
}

.button:hover:before {
	transform: translateZ(-55px);
}

.button:active {
	transform: translateZ(20px);
}

.button:active:before {
	transform: translateZ(-20px);
	top: 12px;
}

/* .hHKDAQ {
    position: absolute;
    left: 0px;
    bottom: 0px;
    display: flex;
    flex-direction: column;
    -webkit-box-pack: center;
    justify-content: center;
    align-items: flex-start;
    width: 100%;
    height: 100%;
    box-sizing: border-box;
    z-index: 1;
    padding: 0px 1rem;
}

.hHKDAQ {
    -webkit-box-align: center;
    align-items: center;
}

html {
          height: 100%;
          min-height: 100%;
          max-width: 100%;
          margin: 0;
          padding: 0;
      }

      body {
          height: 100%;
          min-height: 100%;
          max-width: 100%;
          margin: 0;
          padding: 0;
          font-size: 100%;
          font-style: normal;
          -webkit-font-smoothing: antialiased;
          text-rendering: optimizeLegibility;
      } */
div.homepageCategoryProducts {
	background-color: #F5F5F5;
	padding: 50px 10px 50px 10px;
	margin: 10px auto;
	max-width: 1013px;
}

/* block的大小设计 */
div.productItem {
	width: 189px;
	height: 200px;
	border: 1px solid white;
	background-color: white;
	margin: 8px 4px;
	float: left;
	cursor: pointer;
}

div.productItem span.productItemDesc {
	font-size: 12px;
	color: #666666;
	display: block;
	padding: 16px;
}

div.productItem span.productPrice {
	font-size: 16px;
	color: #FF003A;
	display: block;
	padding-left: 16px;
	margin-top: -10px;
}

div.productItem img {
	width: 187px;
	height: 190px;
}

div.productItem img:hover {
	opacity: 0.7;
	filter: alpha(opacity = 70);
}

div.eachHomepageCategoryProducts {
	margin: 0px 0px 40px 0px;
}

a.productItemDescLink {
	display: inline-block;
	height: 66px;
	text-decoration: none;
}

span.categoryTitle {
	font-size: 16px;
	margin-left: 30px;
	color: #646464;
	font-weight: bold;
}

div.left-mark {
	display: inline-block;
	height: 20px;
	vertical-align: top;
	width: 5px;
	background-color: #19C8A9;
}

img.endpng {
	display: block;
	width: 82px;
	margin: 0 auto;
}
</style>
</head>

<body class="test">
	<h1 align="center" style="color: white; margin: 0;">
		<span class="glyphicon glyphicon-bitcoin"></span><b>itHunter</b>
	</h1>

	<nav class="navbar navbar-default" style="background-color:#22C3AA;">
	<!-- 导航条 -->
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="https://bitcoin.org/en/" target="blank"
				style="margin: 0; padding: 0;"><img src="img/brand.png"
				style="width: 10%"></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="https://www.huobi.com/"
					target="blank">HuoBi<span class="sr-only">(current)</span></a></li>
				<li><a href="#">Link</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Separated link</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">One more separated link</a></li>
					</ul></li>
			</ul>
			<form action="tab" class="navbar-form navbar-left">
				<div class="form-group">
					<input type="hidden" name="f" value="RelatedSource"> <input
						type="text" class="form-control" placeholder="Search"
						name="source" size="50">
				</div>
				<button type="submit" class="btn btn-default"
					formaction="http://127.0.0.1:8080/sBV/relatedSource.html">
					<span class="glyphicon glyphicon-search"></span>
				</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Link</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Separated link</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>

	<div id="content" class="row">
		<img src="img/7.jpg">
		<!--主显示区-->
		<div class="col-md-3"></div>
		<div id="scroll_pane" class="col-md-6">
			<div id="player">
				<img src="img/1.jpg"> <img src="img/2.jpg"> <img
					src="img/3.jpg"> <img src="img/4.jpg"> <img
					src="img/5.jpg"> <img src="img/6.jpg">
			</div>
			<!--显示标签-->
			<div id="tags">
				<img src="img/1.jpg"> <img src="img/2.jpg"> <img
					src="img/3.jpg"> <img src="img/4.jpg"> <img
					src="img/5.jpg"> 
			</div>
		</div>
	</div>

	<!--  <hr style="border: 1px solid #BF3EFF" />
	<div class="sc-19qrnjs-1 eHPiDl">
		<div class="sc-19qrnjs-2 dHYeZk">
			其中一个例子1
			<div>
				<a href="https://www.blockchain.com/charts/market-price" target="_blank" class="sc-1eqxcq8-0 jRorPf">
					<div class="sc-1eqxcq8-4 hNlvXn">
						<div height="25px" width="60px" class="zh6cqq-0 kUljQx">
							<div class="zh6cqq-1 zh6cqq-2 iiiQTn"></div>
							<div class="zh6cqq-1 zh6cqq-3 jgMomM"></div>
							<div class="zh6cqq-1 zh6cqq-4 koirAT"></div>
							<div class="zh6cqq-1 zh6cqq-5 bLNSnn"></div>
							<div class="zh6cqq-1 zh6cqq-6 ezzRgW"></div>
						</div>
					</div>
					<div class="sc-1eqxcq8-1 hHKDAQ">
						<div><span class="u3ufsr-0 fMGGJf sc-1ryi78w-0 gokjTx" opacity="1">Price</span></div><span
							class="hb07d7-0 eqzOBV u3ufsr-0 fMGGJf sc-1ryi78w-0 fmjdZi" opacity="1">$3,995.32</span>
					</div>
					<div class="sc-1eqxcq8-2 iSaCUw"><svg height="300" preserveAspectRatio="none" viewBox="0 0 400 300"
							width="400" class="sc-1eqxcq8-3 iLkGgm">
							<defs>
								<linearGradient id="strokeColor">
									<stop offset="5%" stop-color="#F3BE26"></stop>
									<stop offset="95%" stop-color="#DF5F21"></stop>
								</linearGradient>
								<linearGradient id="fillColor">
									<stop offset="5%" stop-color="#FDC830"></stop>
									<stop offset="95%" stop-color="#F37335"></stop>
								</linearGradient>
							</defs>
							<g>
								<path class="vx-area-closed" stroke="url(#strokeColor)" stroke-width="5"
									fill="url(#fillColor)" 0036630036633,300,0,300Z">
								</path>
							</g>
						</svg></div>
				</a></div>

			其中一个例子2
			<div >
				<a href="https://www.blockchain.com/charts/hash-rate" target="_blank" class="sc-1eqxcq8-0 jRorPf">
					<div class="sc-1eqxcq8-4 hNlvXn">
						<div height="25px" width="60px" class="zh6cqq-0 kUljQx">
							<div class="zh6cqq-1 zh6cqq-2 iiiQTn"></div>
							<div class="zh6cqq-1 zh6cqq-3 jgMomM"></div>
							<div class="zh6cqq-1 zh6cqq-4 koirAT"></div>
							<div class="zh6cqq-1 zh6cqq-5 bLNSnn"></div>
							<div class="zh6cqq-1 zh6cqq-6 ezzRgW"></div>
						</div>
					</div>
					<div class="sc-1eqxcq8-1 hHKDAQ">
						<div><span class="u3ufsr-0 fMGGJf sc-1ryi78w-0 gokjTx" opacity="1">Hashrate</span></div><span
							class="ggrg8j-0 keRmka u3ufsr-0 fMGGJf sc-1ryi78w-0 fmjdZi" opacity="1">NaN TH/s</span>
					</div>
					<div class="sc-1eqxcq8-2 iSaCUw"><svg height="300" preserveAspectRatio="none" viewBox="0 0 400 300"
							width="400" class="sc-1eqxcq8-3 iLkGgm">
							<defs>
								<linearGradient id="strokeColor">
									<stop offset="5%" stop-color="#F3BE26"></stop>
									<stop offset="95%" stop-color="#DF5F21"></stop>
								</linearGradient>
								<linearGradient id="fillColor">
									<stop offset="5%" stop-color="#FDC830"></stop>
									<stop offset="95%" stop-color="#F37335"></stop>
								</linearGradient>
							</defs>
							<g>
								<path class="vx-area-closed" stroke="url(#strokeColor)" stroke-width="5"
									fill="url(#fillColor)">
								</path>
							</g>
						</svg></div>
				</a>
			</div>
			 3例子
			<a href="https://www.blockchain.com/charts/hash-rate" target="_blank" class="sc-1eqxcq8-0 jRorPf">
				<div class="sc-1eqxcq8-4 hNlvXn">
					<div height="25px" width="60px" class="zh6cqq-0 kUljQx">
						<div class="zh6cqq-1 zh6cqq-2 iiiQTn"></div>
						<div class="zh6cqq-1 zh6cqq-3 jgMomM"></div>
						<div class="zh6cqq-1 zh6cqq-4 koirAT"></div>
						<div class="zh6cqq-1 zh6cqq-5 bLNSnn"></div>
						<div class="zh6cqq-1 zh6cqq-6 ezzRgW"></div>
					</div>
				</div>
				<div class="sc-1eqxcq8-1 hHKDAQ">
					<div><span class="u3ufsr-0 fMGGJf sc-1ryi78w-0 gokjTx" opacity="1">Hashrate</span></div><span
						class="ggrg8j-0 keRmka u3ufsr-0 fMGGJf sc-1ryi78w-0 fmjdZi" opacity="1">NaN TH/s</span>
				</div>
				<div class="sc-1eqxcq8-2 iSaCUw"><svg height="300" preserveAspectRatio="none" viewBox="0 0 400 300"
						width="400" class="sc-1eqxcq8-3 iLkGgm">
						<defs>
							<linearGradient id="strokeColor">
								<stop offset="5%" stop-color="#F3BE26"></stop>
								<stop offset="95%" stop-color="#DF5F21"></stop>
							</linearGradient>
							<linearGradient id="fillColor">
								<stop offset="5%" stop-color="#FDC830"></stop>
								<stop offset="95%" stop-color="#F37335"></stop>
							</linearGradient>
						</defs>
						<g>
							<path class="vx-area-closed" stroke="url(#strokeColor)" stroke-width="5"
								fill="url(#fillColor)">
							</path>
						</g>
					</svg></div>
			</a>
			4例子
			<a href="https://www.blockchain.com/charts/n-transactions" target="_blank" class="sc-1eqxcq8-0 jRorPf">
				<div class="sc-1eqxcq8-4 hNlvXn">
					<div height="25px" width="60px" class="zh6cqq-0 kUljQx">
						<div class="zh6cqq-1 zh6cqq-2 iiiQTn"></div>
						<div class="zh6cqq-1 zh6cqq-3 jgMomM"></div>
						<div class="zh6cqq-1 zh6cqq-4 koirAT"></div>
						<div class="zh6cqq-1 zh6cqq-5 bLNSnn"></div>
						<div class="zh6cqq-1 zh6cqq-6 ezzRgW"></div>
					</div>
				</div>
				<div class="sc-1eqxcq8-1 hHKDAQ">
					<div><span class="u3ufsr-0 fMGGJf sc-1ryi78w-0 gokjTx" opacity="1">Tx per day</span></div><span
						class="sc-17v6jbb-0 fqMIKu u3ufsr-0 fMGGJf sc-1ryi78w-0 fmjdZi" opacity="1">NaN</span>
				</div>
				<div class="sc-1eqxcq8-2 iSaCUw"><svg height="300" preserveAspectRatio="none" viewBox="0 0 400 300"
						width="400" class="sc-1eqxcq8-3 iLkGgm">
						<defs>
							<linearGradient id="strokeColor">
								<stop offset="5%" stop-color="#F3BE26"></stop>
								<stop offset="95%" stop-color="#DF5F21"></stop>
							</linearGradient>
							<linearGradient id="fillColor">
								<stop offset="5%" stop-color="#FDC830"></stop>
								<stop offset="95%" stop-color="#F37335"></stop>
							</linearGradient>
						</defs>
						<g>
							<path class="vx-area-closed" stroke="url(#strokeColor)" stroke-width="5"
								fill="url(#fillColor)">
							</path>
						</g>
					</svg></div>
			</a>

		</div> -->



	<!-- 模拟淘宝的 -->

	<!-- <div class="homepageCategoryProducts">
		<div class="eachHomepageCategoryProducts">
			<div class="left-mark"></div>
			<span class="categoryTitle">BTC</span> <br>


			<div class="productItem">
				<a href="./Difficulty.html" target="_blank"
					class="sc-1eqxcq8-0 jRorPf">


					<div class="sc-1eqxcq8-1 hHKDAQ">
						<div>
							<span class="u3ufsr-0 fMGGJf sc-1ryi78w-0 gokjTx" opacity="1">查看困难度</span>
						</div>
						<span
							class="sc-17v6jbb-0 fqMIKu u3ufsr-0 fMGGJf sc-1ryi78w-0 fmjdZi"
							opacity="1">NaN</span>
					</div>

				</a>
			</div>




			<div class="productItem"></div>


			<div class="productItem"></div>

			<div class="productItem"></div>

			<div class="productItem">
				<a href="#nowhere"><img width="100px"
					src="http://how2j.cn/tmall/img/productSingle_middle/9499.jpg"></a>
				<a href="#nowhere" class="productItemDescLink"> <span
					class="productItemDesc">[热销] 新款男士偏光太阳镜日夜两用墨镜潮运动开车 </span>
				</a> <span class="productPrice"> 551.00 </span>
			</div>
			<div style="clear: both"></div>
		</div>

		<div class="eachHomepageCategoryProducts">
			<div class="left-mark"></div>
			<span class="categoryTitle"></span> <br>
			<div class="productItem"></div>
			<div class="productItem"></div>
			<div class="productItem"></div>



			<div style="clear: both"></div>
		</div>
	</div>

	</div> -->

<div class="content">

	<!-- 1.AddnumTx，每天新增地址除以每天交易量的比例随时间的变化趋势（新增地址是每天新增） -->
   <a class="card" href="./Difficulty.html" target="_blank">
      <div class="front" style="background-image: url(img/img/1.png);">
        <p>每天新增地址除以每天交易量的比例随时间的变化趋势</p>
      </div>
      <div class="back">
        <div>
          <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
          <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
          <button class="button">Click Here</button>
        </div>
      </div>
    </a>
    
    <!-- 2.AddrAdd，新增地址数量随时间的变化趋势 -->
    <a class="card" href="./AddrAdd.html" target="_blank">
    <div class="front" style="background-image: url(img/img/2.png);">
      <p>新增地址数量随时间的变化趋势</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
    <!-- 3.AddressAddNum，新增地址的数量随高度的变化趋势 -->
    <a class="card" href="./AddressAddNum.html" target="_blank">
    <div class="front" style="background-image: url(img/img/3.png);">
      <p>新增地址的数量随高度的变化趋势</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
   <!--  4.AddressAll，总地址的数量随高度变化的趋势 -->
    <a class="card" href="./AddressAll.html" target="_blank">
    <div class="front" style="background-image: url(img/img/4.png);">
      <p>总地址的数量随高度变化的趋势</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
<!--     5.Difficulty，难度值随高度的变化趋势
    <a class="card" href="./Difficulty.html">
    <div class="front" style="background-image: url(img/img/5.png);">
      <p>难度值随高度的变化趋势</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a> -->
    
    <!-- 6.DifficultyOnly，难度值随高度的变化趋势（数据量大一点） -->
    <a class="card" href="./DifficultyOnly.html" target="_blank">
    <div class="front" style="background-image: url(img/img/6.png);">
      <p>难度值随高度的变化趋势（数据量大一点）</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
    
      <!-- 7.DifficultyRate，难度值变化的比率随时间的变化趋势 -->
    <a class="card" href="./DifficultyRate.html" target="_blank">
    <div class="front" style="background-image: url(img/img/7.png);">
      <p>难度值变化的比率随时间的变化趋势</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
          <!-- 8.FeePerTxPrice，每笔交易的交易费及币价（美元）随时间的变化 -->
    <a class="card" href="./FeePerTxPrice.html" target="_blank">
    <div class="front" style="background-image: url(img/img/8.png);">
      <p>每笔交易的交易费及币价（美元）随时间的变化</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
          <!-- 9.FeePrice，每个区块的交易费及币价（美元）随区块的变化 -->
    <a class="card" href="./FeePrice.html" target="_blank">
    <div class="front" style="background-image: url(img/img/9.png);">
      <p>每个区块的交易费及币价（美元）随区块的变化</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
          <!-- 10. FeePrice1，每天的总交易费及币价（美元）随时间的变化 -->
    <a class="card" href="./FeePrice1.html" target="_blank">
    <div class="front" style="background-image: url(img/img/10.png;">
      <p>每天的总交易费及币价（美元）随时间的变化</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
          <!-- 11.OutputPrice，每天的平均交易额及其币价 -->
    <a class="card" href="./OutputPrice.html" target="_blank">
    <div class="front" style="background-image: url(img/img/11.png);">
      <p>每天的平均交易额及其币价</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
<!--           12. OutputPriceDaliy，每天的平均交易额及其币价（和11没区别）
    <a class="card" href="#!">
    <div class="front" style="background-image: url(img/564.jpg);">
      <p>每天的平均交易额及其币价</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a> -->
    
          <!-- 13.PriceAddnumFive，新增地址数量与币价随时间的变化趋势 -->
    <a class="card" href="./PriceAddnumFive.html" target="_blank">
    <div class="front" style="background-image: url(img/img/13.png);">
      <p>新增地址数量与币价随时间的变化趋势</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
          <!-- 14. PriceAddraddRate，每天的新地址增长率与币价随时间的变化趋势 -->
    <a class="card" href="./PriceAddraddRate.html" target="_blank">
    <div class="front" style="background-image: url(img/img/14.png);">
      <p>每天的新地址增长率与币价随时间的变化趋势</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
          <!-- 15. PriceAddraddRate10，10天的新地址增长率与币价随时间的变化趋势 -->
    <a class="card" href="./PriceAddraddRate10.html" target="_blank">
    <div class="front" style="background-image: url(img/img/15.png);">
      <p>10天的新地址增长率与币价随时间的变化趋势</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
          <!-- 16. PriceAddraddRate5，5天的新地址增长率与币价随时间的变化趋势 -->
    <a class="card" href="./PriceAddraddRate5.html" target="_blank">
    <div class="front" style="background-image: url(img/img/16.png);">
      <p>5天的新地址增长率与币价随时间的变化趋势</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
          <!-- 17. PriceAddress，新增地址的数量与币价随高度的变化趋势 -->
    <a class="card" href="./PriceAddress.html" target="_blank">
    <div class="front" style="background-image: url(img/img/17.png);">
      <p>新增地址的数量与币价随高度的变化趋势</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
    
         <!-- 18.Reward，矿工奖励随时间变化趋势 -->
    <a class="card" href="./Reward.html" target="_blank">
    <div class="front" style="background-image: url(img/img/18.png);">
      <p>矿工奖励随时间变化趋势</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
    
         <!-- 19. RewardPrice，矿工奖励与币价随时间变化趋势 -->
    <a class="card" href="./RewardPrice.html" target="_blank">
    <div class="front" style="background-image: url(img/img/19.png);">
      <p>矿工奖励与币价随时间变化趋势</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
         <!-- 20. Size，区块大小随区块高度变化 -->
    <a class="card" href="./Size.html" target="_blank">
    <div class="front" style="background-image: url(img/img/20.png);">
      <p>区块大小随区块高度变化</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
    
         <!-- 21 TxCount，比特币交易数随时间的变化趋势 -->
    <a class="card" href="./TxCount.html" target="_blank">
    <div class="front" style="background-image: url(img/img/21.png);">
      <p>比特币交易数随时间的变化趋势</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
    
         <!-- 22.TxCountAddress ，比特币交易数和新增地址随时间的变化趋势 -->
    <a class="card" href="./TxCountAddress.html" target="_blank">
    <div class="front" style="background-image: url(img/img/22.png);">
      <p>比特币交易数和新增地址随时间的变化趋势</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
         <!-- 23.TxCountPrice，比特币交易数和币价随时间的变化趋势 -->
    <a class="card" href="./TxCountPrice.html" target="_blank">
    <div class="front" style="background-image: url(img/img/23.png);">
      <p>比特币交易数和币价随时间的变化趋势</p>
    </div>
    <div class="back">
      <div>
        <p>Consectetur adipisicing elit. Possimus, praesentium?</p>
        <p>Provident consectetur natus voluptatem quis tenetur sed beatae eius sint.</p>
        <button class="button">Click Here</button>
      </div>
    </div></a>
    
    
    
    
    
    
    
</div>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
<p>此网站针对比特币数据的分析及预测</p>
<!-- <p>来源：<a href="http://www.lanrenzhijia.com/" target="_blank">懒人</a></p> -->
</div>


</body>

</html>