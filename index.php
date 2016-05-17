<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Autocomplete Search dengan PHP, MySQLi, Ajax and jQuery </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
	    <link href="assets/css/bootstrap.css" rel="stylesheet" media="screen">
        <link href="assets/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
	
	<style type="text/css">
	body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
 .web{
 font-family:tahoma;
 size:12px;
 top:10%;
 border:1px solid #CDCDCD;
 border-radius:10px;
 padding:10px;
 width:38%;
 margin:auto;
 }
 #search_keyword_id
 {
 width:300px;
 border:solid 1px #CDCDCD;
 padding:10px;
 font-size:14px;
 }
 #result
 {
 position:absolute;
 width:320px;
 display:none;
 margin-top:-1px;
 border-top:0px;
 overflow:hidden;
 border:1px #CDCDCD solid;
 background-color: white;
 }
 .show
 {
 font-family:tahoma;
 padding:10px; 
 border-bottom:1px #CDCDCD dashed;
 font-size:15px; 
 }
 .show:hover
 {
 background:#364956;
 color:#FFF;
 cursor:pointer;
 }
</style>
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="assets/ico/favicon.png">
  </head>

  <body>
 <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="http://andeznet.com">AndezNet</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li><a href="active">Home</a></li>
			 
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>


	<div class="container">
	<div class='web'>
        <input type="text" class="cari_keyword form-control" id="cari_keyword_id" placeholder="Cari Nama Siswa..." />
        <div id="result"></div>
    </div>
	<br><br>
	<div class='web'>
        <input type="text" class="cari_keyword form-control" id="cari_keyword_id" placeholder="Cari Nama Siswa..." />
        <div id="result"></div>
    </div>

	<div class="row-fluid">
			<div class="span12">
			  <div class="row-fluid">
				<div class="alert alert-info">
					<a name="contact"></a>
				  <h2>www.andeznet.com</h2>
				  <p class="text-info">Gudang Teknologi & Informasi</p>
				  <p>&copy; <a href="http://andeznet.com">www.andeznet.com</a>&nbsp<?php echo date("Y");?></p>
				</div><!--/span-->
			  </div><!--/row-->
			</div><!--/span-->
	</div><!--/row-->

	</div>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript">
$(function(){
$(".cari_keyword").keyup(function() 
{ 
    var cari_keyword_value = $(this).val();
    var dataString = 'cari_keyword='+ cari_keyword_value;
    if(cari_keyword_value!='')
    {
        $.ajax({
            type: "POST",
            url: "cari.php",
            data: dataString,
            cache: false,
            success: function(html)
                {
                    $("#result").html(html).show();
                }
        });
    }
    return false;    
});
 
$("#result").live("click",function(e){
    var $clicked = $(e.target);
    var $name = $clicked.find('.nama_siswa').html(); 
    var decoded = $("<div/>").html($name).text();
    $('#cari_keyword_id').val(decoded);
});
 
$(document).live("click", function(e) { 
    var $clicked = $(e.target);
    if (! $clicked.hasClass("cari_keyword")){
        $("#result").fadeOut(); 
    }
});
 
$('#cari_keyword_id').click(function(){
    $("#result").fadeIn();
});
});
</script>
	
	
	<script src="assets/js/bootstrap.min.js"></script>

  </body>
</html>