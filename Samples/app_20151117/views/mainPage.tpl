<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MyPage</title>
<link href="../static/css/style2.css" rel="stylesheet" type="text/css">
<link rel=stylesheet type="text/css" href="../static/css/view.css">

<script type="text/javascript" src="../static/js/test.js"></script> 

<!-- PATA PATA -->
<script type="text/javascript">
    <!--
    var btnonoff0=0;
    var btnonoff1=0;
    var btnonoff2=0;

    function openclosebtn(type){
        var id  = "openclose"+type;
        if(type == 0){
            if (btnonoff0==0){
                document.getElementById(id).style.display = "block";
                document.btnname0.inpname0.value="△";
                btnonoff0=1;
            } else {
                document.getElementById(id).style.display = "none";
                document.btnname0.inpname0.value="▽";
                btnonoff0=0;
            }
        } else if(type == 1){
            if (btnonoff1==0){
                document.getElementById(id).style.display = "block";
                document.btnname1.inpname1.value="△";
                btnonoff1=1;
            } else {
                document.getElementById(id).style.display = "none";
                document.btnname1.inpname1.value="▽";
                btnonoff1=0;
            }
        } else if(type == 2){
            if (btnonoff2==0){
                document.getElementById(id).style.display = "block";
                document.btnname2.inpname2.value="△";
                btnonoff2=1;
            } else {
                document.getElementById(id).style.display = "none";
                document.btnname2.inpname2.value="▽";
                btnonoff2=0;
            }
        } 
    }
    //-->
</script>
<!-- PATA PATA -->
<script type="text/javascript" src="../static/js/Chart.js"></script>
</head>

<body>
<form name="form1">
<div id="out"><!-- OutSide -->
<INPUT TYPE="hidden" NAME="key" VALUE="">
<INPUT TYPE="hidden" NAME="Fkey" VALUE="C">
</form>
<div id="head">
<h1>MainPage</h1>
</div><!-- head -->

<div id="main">
        
	<div id="right">
	<h2>MainPage</h2>
	<div class="tex2">MainPage</div>
        <div style="width: 50%">
        <canvas id="canvas" height="450" width="600"></canvas>
        </div>

	<form name="btnname0">
	<input type="button" name="inpname0" value="▽" onClick="openclosebtn(0)"> More info Daily　[YYYYMMDDHH]
	<select name = "AreaInfoDay">
	  <option value=0>Area-A</option>
	  <option value=1>Area-B</option>
	  <option value=2>Area-C</option>
	</select>

	<select name = "graphtypeDay">
	  <option value=0>GraphType-TMP</option>
	  <option value=1>GraphType-HUM</option>
	  <option value=2>GraphType-WATER</option>
	</select>

	<div id="openclose0" style="display:none;">

	<table class="table021">

	  <tr>
	    <th>TIME</th>
	    <th>02:00</th>
	    <th>04:00</th>
	    <th>06:00</th>
	    <th>08:00</th>
	    <th>10:00</th>
	    <th>12:00</th>
	    <th>14:00</th>
	    <th>16:00</th>
	    <th>18:00</th>
	    <th>20:00</th>
	    <th>22:00</th>
	    <th>24:00</th>
	  </tr>
	  <tr>
	    <th>HUM</th>
	    <td>50.4%</td>
	    <td>50.5%</td>
	    <td>50.7%</td>
	    <td>50.7%</td>
	    <td>50.3%</td>
	    <td>50.4%</td>
	    <td>50.5%</td>
	    <td>60.7%</td>
	    <td>60.7%</td>
	    <td>60.3%</td>
	    <td>60.7%</td>
	    <td>60.3%</td>
	  </tr>
	  <tr>
	    <th>TEMP</th>
	    <td>23℃</td>
	    <td>23℃</td>
	    <td>24℃</td>
	    <td>25℃</td>
	    <td>25℃</td>
	    <td>25℃</td>
	    <td>30℃</td>
	    <td>30℃</td>
	    <td>30℃</td>
	    <td>20℃</td>
	    <td>20℃</td>
	    <td>20℃</td>
	  </tr>
	  <tr>
	    <th>WATER</th>
	    <td>20cm</td>
	    <td>23cm</td>
	    <td>24cm</td>
	    <td>25cm</td>
	    <td>25cm</td>
	    <td>25cm</td>
	    <td>30cm</td>
	    <td>30cm</td>
	    <td>30cm</td>
	    <td>20cm</td>
	    <td>20cm</td>
	    <td>20cm</td>
	  </tr>
	</table>


     <script>
        var randomScalingFactor = function(){ return Math.round(Math.random()*100)};
        var getlabels = function(){ var lagel = ["02:00","04:00","06:00","08:00","10:00","12:00","14:00","16:00","18:00","20:00","22:00","24:00"]; return lagel};
        var barChartData = {
                labels : getlabels(),
                datasets : [
                        {
                                fillColor : "rgba(220,220,220,0.5)",
                                strokeColor : "rgba(220,220,220,0.8)",
                                highlightFill: "rgba(220,220,220,0.75)",
                                highlightStroke: "rgba(220,220,220,1)",
                                data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
                        },
                        {
                                fillColor : "rgba(151,187,205,0.5)",
                                strokeColor : "rgba(151,187,205,0.8)",
                                highlightFill : "rgba(151,187,205,0.75)",
                                highlightStroke : "rgba(151,187,205,1)",
                                data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
                        },
                        {
                                fillColor : "rgba(131,131,201,0.3)",
                                strokeColor : "rgba(131,137,201,0.8)",
                                highlightFill : "rgba(131,137,201,0.75)",
                                highlightStroke : "rgba(131,137,201,1)",
                                data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
                        }

                ]

        }
        window.onload = function(){
                var ctx = document.getElementById("canvas").getContext("2d");
                window.myBar = new Chart(ctx).Bar(barChartData, {
                        responsive : true
                });
        }

        </script>

        <div style="width: 50%">
        <canvas id="canvas" height="450" width="600"></canvas>
        </div>

        <!--<p><iframe src="./js/samples/bar.html" width="650px" height="255px"></iframe></p>-->
        <p></p>
	</div>
	</form>

	</div><!-- right -->

	<div id="left"><!-- SideMenu -->
	<ul>
	<li><a href="#" onclick="location.href='/mainMenu'">MainMenu</a></li>
	<li><a href="#" onClick="if (/Chrome/i.test(navigator.userAgent)) { window.close(); } else { window.open('about:blank', '_self').close(); }">Close</a></li>
	</ul>
	</div><!-- left -->

<br style="clear:both">

</div><!-- main -->
<div id="foot">
</div><!-- foot -->
</div><!-- out -->
</body>
</html>
