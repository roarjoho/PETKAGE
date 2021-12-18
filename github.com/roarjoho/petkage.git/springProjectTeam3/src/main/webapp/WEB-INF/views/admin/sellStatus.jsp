<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
   <title>펫키지 관리자페이지</title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <meta name="description" content="Quantum Able Bootstrap 4 Admin Dashboard Template by codedthemes">
   <meta name="keywords" content="appestia, Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
   <meta name="author" content="codedthemes">
   <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/admin_images/favicon.png" type="image/x-icon">
   <link rel="icon" href="${pageContext.request.contextPath}/resources/admin_images/favicon.ico" type="image/x-icon"> 
   <link href="https://fonts.googleapis.com/css?family=Ubuntu:400,500,700" rel="stylesheet">
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin_icon/themify-icons/themify-icons.css">
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin_icon/icofont/css/icofont.css"> 
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin_icon/simple-line-icons/css/simple-line-icons.css">
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin_plugins/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin_css/main.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/admin_css/responsive.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/chart/css/style.css" type="text/css">
   
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/chart/css/style.css" type="text/css">
   <script src="${pageContext.request.contextPath}/resources/chart/js/amcharts.js" type="text/javascript"></script>
   <script src="${pageContext.request.contextPath}/resources/chart/js/serial.js" type="text/javascript"></script>
   <script src="${pageContext.request.contextPath}/resources/chart/js/dataloader.min.js" type="text/javascript"></script>
   <script src="${pageContext.request.contextPath}/resources/chart/js/jquery.animateNumber.js" type="text/javascript"></script>
   
	<script type="text/javascript">
		var chart;
		var chartData = [];
		
		window.onload = function(){
			function getData() {
				$.getJSON('${pageContext.request.contextPath}/admin/vcount',function(rdata){
				var comma_separator_number_step = $.animateNumber.number_step_factories.separator(',');
				$('#vcount').animateNumber({number: rdata, number_step: comma_separator_number_step});
				});
		    }
		       	
		    	getData();
		
		    	setInterval(function() {
		       		getData();
		        	}, 1000*3);
			
		}
	   	
	    AmCharts.ready(function () {
	    	// SERIAL CHART
	  	  chart = new AmCharts.AmSerialChart();
	      chart["dataLoader"] = {
	         	"url" : "${pageContext.request.contextPath}/admin/salesChart",
	         	"format" : "json"
		};
	      chart.dataProvider = chartData;
	      chart.categoryField = "date";
	      chart.startDuration = 1;
	
	      var categoryAxis = chart.categoryAxis;
	      categoryAxis.labelRotation = 90;
	      categoryAxis.gridPosition = "start";
	
	      var graph = new AmCharts.AmGraph();
	      graph.valueField = "price";
	      graph.balloonText = "[[category]]: <b>[[value]]</b>";
	      graph.type = "column";
	      graph.lineAlpha = 0;
	      graph.fillAlphas = 0.8;
	      chart.addGraph(graph);
	      
	      // CURSOR
	      var chartCursor = new AmCharts.ChartCursor();
	      chartCursor.cursorAlpha = 0;
	      chartCursor.zoomable = false;
	      chartCursor.categoryBalloonEnabled = false;
	      chart.addChartCursor(chartCursor);
	
	      chart.creditsPosition = "top-right";
	
	      chart.write("chartdiv");
	 });
	</script>

</head>

<body class="sidebar-mini fixed">
	
   <div class="wrapper">        
    <jsp:include page="../inc/admin_top.jsp"></jsp:include>
      <div class="content-wrapper">
         <div class="container-fluid">
         
            <div class="row">
               <div class="col-sm-12 p-0">
                  <div class="main-header">
                     <ol class="breadcrumb breadcrumb-title breadcrumb-arrow">
                        <li class="breadcrumb-item">
                           <a href="${pageContext.request.contextPath}/admin/index">
                              <i class="icofont icofont-home"></i>
                           </a>
                        </li>
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/sellStatus">매출 현황</a>
                        </li>
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/sellStatus">매출 현황 조회</a>
                        </li>
                     </ol>
                  </div>
               </div>
            </div>
            <!-- Header end -->

            <div class="row">
               <div class="col-sm-12">
                 
                  <div class="card">
                     
                     <div class="card-block">
                        <div class="row">
                           <div class="col-sm-12 table-responsive">
                            <div id="chartdiv" style="width: 700px; height: 400px;"></div>
                              
                           </div>
                        </div>
                     </div>
                  </div>      
                 
               </div>        
               
            </div>
         </div>
      </div>
   </div>

   <script src="${pageContext.request.contextPath}/resources/admin_plugins/jquery/dist/jquery.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/jquery-ui/jquery-ui.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/tether/dist/js/tether.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/bootstrap/js/bootstrap.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/Waves/waves.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/jquery.nicescroll/jquery.nicescroll.min.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/classie/classie.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_plugins/notification/js/bootstrap-growl.min.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath}/resources/admin_js/main.min.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath}/resources/admin_pages/elements.js"></script>
   <script src="${pageContext.request.contextPath}/resources/admin_js/menu.min.js"></script>
   
   
	<script>
	var $window = $(window);
	var nav = $('.fixed-button');
	$window.scroll(function(){
	    if ($window.scrollTop() >= 200) {
	       nav.addClass('active');
	    }
	    else {
	       nav.removeClass('active');
	    }
	});
	</script>
</body>

</html>
