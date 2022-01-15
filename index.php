<?php
include "koneksi.php";
  session_start();
  if(@$_SESSION['userweb'] == ""){
    header('location:login.php');
  }

?>
<!DOCTYPE HTML>
<html>
<head>
<title>TUGAS AKHIR - PWD 2021 </title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $(".dropdown img.flag").addClass("flagvisibility");

            $(".dropdown dt a").click(function() {
                $(".dropdown dd ul").toggle();
            });
                        
            $(".dropdown dd ul li a").click(function() {
                var text = $(this).html();
                $(".dropdown dt a span").html(text);
                $(".dropdown dd ul").hide();
                $("#result").html("Selected value is: " + getSelectedValue("sample"));
            });
                        
            function getSelectedValue(id) {
                return $("#" + id).find("dt a span.value").html();
            }

            $(document).bind('click', function(e) {
                var $clicked = $(e.target);
                if (! $clicked.parents().hasClass("dropdown"))
                    $(".dropdown dd ul").hide();
            });


            $("#flagSwitcher").click(function() {
                $(".dropdown img.flag").toggleClass("flagvisibility");
            });
        });
    </script>
<!--slider-->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<script src="js/modernizr.js"></script>
<!--<link href='http://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>-->
 <!-- jQuery -->
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
  <script>window.jQuery || document.write('<script src="js/libs/jquery-1.7.min.js">\x3C/script>')</script>
  <!-- FlexSlider -->
  <script defer src="js/jquery.flexslider.js"></script>
  <script type="text/javascript">
    $(function(){
      SyntaxHighlighter.all();
    });
    $(window).load(function(){
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>
</head>
<body>
<div class="header-bg">
	<div class="wrap"> 
		<div class="h-bg">
			<div class="total">
				<div class="bot2"></div>
				<div class="header">
					<div class="header_top_right">
						<dl id="sample" class="dropdown">
		   				 </dl>
		 				 <div class="dropdown" id="dropdown">
							<input type="checkbox" id="drop1" />
		        				<ul class="dropdown_content">
			       					
								</ul>		
						</div> 
						<div class="clear"></div>
			 		</div>
					 <div class="clear"></div>
					<div class="header-bot">
						<div class="logo">
							<a href="index.html"><img src="images/logoono.png" alt=""/></a>
						</div>
						<div class="cart">
					    	<ul class="ph-no">
								<li class="item  first_item">
									<div class="item_html">
										<span class="text1">Selamat Datang</span>
										<span class="text2">Di OV[Ono Velg]</span>
									</div>
								</li>
							</ul>
				    		<div class="login">
		   	   					<span><a href="logout.php"><img src="images/login.png" alt="" title="logout"></a></span>
		   					</div>
				    		<div class="cart-desc">
				    			<div class="details-list">
									<a href="lihat_data_barang.php" class="details" title="Cari"></a>
									<a href="lihat_data_barang.php" class="button addToCart"><span>Cari</span></a>
								</div>
							
									<div class="clear"></div> 
							</div>
						</div>					
						<div class="clear"></div> 
					</div>
			</div>	
				<div class="menu"> 	
					<div class="top-nav"> 
							<ul>
								<li class="active"><a href="tambah_pembeli.php">Tambah Pembeli</a></li>
								<li><a href="tambah_barang.php"                >Tambah Barang</a></li>
								<li><a href="lihat_data_barang.php"            >Lihat Barang</a></li>
								<li><a href="lihat_data_pembelian.php"         >Lihat Pembelian</a></li>
							</ul>
							<div class="clear"></div> 
					
				</div>				
			
	<div class="banner">
		<section class="slider">
	        <div class="flexslider">
	          <ul class="slides">
	            <li>
	  	    	    <img src="images/backono.jpg" alt=""/>
	  	    		</li>
	  	    		<li>
	  	    	    <img src="images/backono.jpg"  alt=""/>
	  	    		</li>
	  	    		<li>
	  	    	    <img src="images/backono.jpg"  alt=""/>
	  	    		</li>
	  	    		<li>
	  	    	    <img src="images/backono.jpg"  alt=""/>
	  	    		</li>
	          </ul>
	        </div>
        </section>
    </div>
 	<div class="content-top">
			<div class="col_1_of_3 span_1_of_3">
				<div class="span4">
					<img src="images/velg28.jpg" alt=""/>
					<div class="item_html">
					<div class="banner-box3">
					<span class="text20">BARU</span>
					<span class="text21">OZ RACING</span>
					<a href="tambah_barang.php"?id_product=23&amp;controller=product&amp;id_lang=1" class="link2"></a>
					</div>
					</div>
				 </div>
			</div>
			<div class="col_1_of_3 span_1_of_3">
				<div class="span4">
					<img src="images/velg29.jpg" alt=""/>
					<div class="item_html">
					<div class="banner-box3">
					<span class="text20">BARU</span>
					<span class="text21">VOSSEN</span>
					<a href="tambah_barang.php"?id_product=23&amp;controller=product&amp;id_lang=1" class="link2"></a>
					</div>
					</div>
				 </div>
			</div>
			<div class="col_1_of_3 span_1_of_3">
				<div class="span4">
					<img src="images/velg26.jpg" alt=""/>
					<div class="item_html">
					<div class="banner-box3">
					<span class="text20">BARU</span>
					<span class="text21">AUTO SPEED</span>
					<a href="tambah_barang.php"?id_product=23&amp;controller=product&amp;id_lang=1" class="link2"></a>
					</div>
					</div>
				 </div>
			</div>
			<div class="clear"></div> 
	   </div>
	   <div class="content-bottom">
			<div class="cont span_2_of_3">
			<h4><span>PRODUK FITUR</span></h4>
			<div class="grid-bottom">
				<div class="col_1_of_b span_1_of_bottom">
					<a href="tambah_barang.php"><div class="grids "> 
						<img src="images/velg11.jpg" alt=""/>
							<div class="price">
								<div class="bot1">
									<p class="title" style="height: 38px;">Honda</p>
									<div class="price1" style="height: 19px;">
								 		<span class="actual">PESAN</span>
									</div>
								</div>
								<div class="cart1">
									<img src="images/cart.png" alt=""/>
								</div>
								<div class="clear"></div>
							</div>
					</div></a>
			    </div>
				<div class="col_1_of_b span_1_of_bottom">
					<a href="tambah_barang.php"><div class="grids "> 
						<img src="images/velg12.jpg" alt=""/>
							<div class="price">
								<div class="bot1">
									<p class="title" style="height: 38px;">Enkei</p>
									<div class="price1" style="height: 19px;">
								 		<span class="actual">PESAN</span>
									</div>
								</div>
								<div class="cart1">
									<img src="images/cart.png" alt=""/>
								</div>
								<div class="clear"></div>
							</div>
					</div></a>
			    </div>
				<div class="col_1_of_b span_1_of_bottom1">
					<a href="tambah_barang.php"><div class="grids "> 
						<img src="images/velg25.jpg" alt=""/>
							<div class="price">
								<div class="bot1">
									<p class="title" style="height: 38px;">Bbs</p>
									<div class="price1" style="height: 19px;">
								 		<span class="actual">PESAN</span>
									</div>
								</div>
								<div class="cart1">
									<img src="images/cart.png" alt=""/>
								</div>
								<div class="clear"></div>
							</div>
					</div></a>
			    </div>
				<div class="clear"></div> 
		</div>
		<div class="grid-bottom">
				<div class="col_1_of_b span_1_of_bottom">
					<a href="tambah_barang.php"><div class="grids "> 
						<img src="images/velg14.jpg" alt=""/>
							<div class="price">
								<div class="bot1">
									<p class="title" style="height: 38px;">Enkei</p>
									<div class="price1" style="height: 19px;">
								 		<span class="actual">PESAN</span>
									</div>
								</div>
								<div class="cart1">
									<img src="images/cart.png" alt=""/>
								</div>
								<div class="clear"></div>
							</div>
					</div></a>
			    </div>
				<div class="col_1_of_b span_1_of_bottom">
					<a href="tambah_barang.php"><div class="grids "> 
						<img src="images/velg20.jpg" alt=""/>
							<div class="price">
								<div class="bot1">
									<p class="title" style="height: 38px;">Oz Racing</p>
									<div class="price1" style="height: 19px;">
								 		<span class="actual">PESAN</span>
									</div>
								</div>
								<div class="cart1">
									<img src="images/cart.png" alt=""/>
								</div>
								<div class="clear"></div>
							</div>
					</div></a>
			    </div>
				<div class="col_1_of_b span_1_of_bottom1">
					<a href="tambah_barang.php"><div class="grids "> 
						<img src="images/velg18.jpg" alt=""/>
							<div class="price">
								<div class="bot1">
									<p class="title" style="height: 38px;">Bbs</p>
									<div class="price1" style="height: 19px;">
								 		<span class="actual">PESAN</span>
									</div>
								</div>
								<div class="cart1">
									<img src="images/cart.png" alt=""/>
								</div>
								<div class="clear"></div>
							</div>
					</div></a>
			    </div>
				<div class="clear"></div> 
		</div>
	</div>				    
			<div class="rsidebar span_1_of_3">
				<div class="sidebar">
					<h4 class="title_block"><span>PRODUK BARU</span></h4>
				    <div class class="newitem">
						<a class="product-image" href="#" title="Lorem ipsum dolor sit amet conse ctetur "><img src="images/velg17.jpg" alt="Lorem ipsum dolor sit amet conse ctetur "></a>
							<div class="product-details">
								<p class="product-name"><a href="#">Woodbell</a></p>
								<div class="price-box">
									<p class="old-price">
										<span class="reducedfrom">Rp 100 Juta</span>
									</p>
								</div>
									<p class="special-price">
										<span class="actual1">Rp 50 Juta</span>
									</p>
									<a href="tambah_barang.php" class="link-cart">PESAN</a>
							</div>
							<div class="clear"></div> 
					</div>
				</div>
				<div class="sidebar">
					<div class class="newitem">
						<a class="product-image" href="#" title="Lorem ipsum dolor sit amet conse ctetur "><img src="images/velg13.jpg" alt="Lorem ipsum dolor sit amet conse ctetur "></a>
							<div class="product-details">
								<p class="product-name"><a href="#">Enkei</a></p>
								<div class="price-box">
									<p class="old-price">
										<span class="reducedfrom">Rp 100 Juta</span>
									</p>
								</div>
									<p class="special-price">
										<span class="actual1">Rp 50 Juta</span>
									</p>
									<a href="tambah_barang.php" class="link-cart">PESAN</a>
							</div>
							<div class="clear"></div> 
					</div>
				</div>
				<div class="sidebar1">
					<div class class="newitem">
						<a class="product-image" href="#" title="Lorem ipsum dolor sit amet conse ctetur "><img src="images/velg16.jpg" alt="Lorem ipsum dolor sit amet conse ctetur "></a>
							<div class="product-details">
								<p class="product-name"><a href="#">Zen</a></p>
								<div class="price-box">
									<p class="old-price">
										<span class="reducedfrom">Rp 100 Juta</span>
									</p>
								</div>
									<p class="special-price">
										<span class="actual1">Rp 50 Juta</span>
									</p>
									<a href="tambah_barang.php" class="link-cart">PESAN</a>
							</div>
							<div class="clear"></div> 
					</div>
				</div>
			</div>
				<div class="clear"></div> 
		</div>
	<div class="footer">
		<div class="section group">
				<div class="col_1_of_4 span_1_of_4">
					<h3>INFORMASI</h3>
					<ul>
						<li><a href="#">About us</a></li>
						<li><a href="#">Sitemap</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">Terms and conditions</a></li>
						<li><a href="#">Legal Notice</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h3>PENAWARAN</h3>
					<ul>
						<li><a href="#">New products</a></li>
						<li><a href="#">top sellers</a></li>
						<li><a href="single.html">Specials</a></li>
						<li><a href="#">Products</a></li>
						<li><a href="#">Comments</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h3>AKUN</h3>
					<ul>
						<li><a href="#">Your Account</a></li>
						<li><a href="#">Personal info</a></li>
						<li><a href="#">Prices</a></li>
						<li><a href="#">Address</a></li>
						<li><a href="#">Locations</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4 footer-lastgrid">
					<h3>BERHUBUNGAN</h3>
					<ul>
						<li><a href="#"><img src="images/facebook.png" title="facebook"></a></li>
						<li><a href="#"><img src="images/twitter.png" title="Twiiter"></a></li>
						<li><a href="#"><img src="images/rss.png" title="Rss"></a></li>
						<li><a href="#"><img src="images/gpluse.png" title="Google+"></a></li>
					</ul>
					<p>Design by <a href="#">tedinizzar.a - 2022</a></p>
				</div>
				<div class="clear"></div> 
		</div>
	</div>
   </div>
</div>
</div>
</div>
</body>
</html>

    	
    	
            