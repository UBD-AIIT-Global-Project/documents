% import sys
% from Dao import Dao
% import psycopg2

% # DB Access(Parameter=1)

% # SENSOR01 TMP 
% TMP_ = ''
% d1 = Dao()
% rows  = {}
% rows  = d1.load01(4,'00000000')
% for row in rows: TMP_ = TMP_ + "%s" %(row[1]) + ","
% TMP_ = TMP_[:-1]

% # SENSOR02 SUII 
% WL_ = ''
% d2 = Dao()
% rows  = {}
% rows  = d2.load01(4,'00000002')
% for row in rows: WL_ = WL_ + "%s" %(row[1]) + ","
% WL_ = WL_[:-1]


% # List Sample
% data = [0,1,2,3]

%kazu = "50" + "," + "60" + "," + "70" + "," + "80" + "," + "90" + "," + "80" + "," + "90" + "," + "80" + "," + "80" + "," + "90" + "," "80" + "," + "90"  


<!DOCTYPE html>

<html lang=ja>
  <head>
    <meta charset="UTF-8">
    <title>OutputPage</title>

    <script type="text/javascript" src="../static/js/Chart.js"></script>
    <script language="JavaScript"><!--
        document.write("<br>Sample<br><font color='#ff0000'><small>(^_^)</small></font>")
    // --></script>

  </head>
  <body>
    <h1>OutputPage</h1>
        <div style="width: 50%">
        <canvas id="canvas" height="450" width="600"></canvas>
        </div>

        <p>youkoso! {{name}} San</br>
        Let's go to {{men}} Shop!<p>
        <a href="/">return to HOME!!!!!!</a>
        </p>

  </head>

        <!-- ******************************** -->
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
                                data : [{{kazu}}]
				//data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
			},
			{
				fillColor : "rgba(151,187,205,0.5)",
				strokeColor : "rgba(151,187,205,0.8)",
				highlightFill : "rgba(151,187,205,0.75)",
				highlightStroke : "rgba(151,187,205,1)",
                                data : [{{WL_}}]
				//data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
			},
			{
				fillColor : "rgba(131,131,201,0.3)",
				strokeColor : "rgba(131,137,201,0.8)",
				highlightFill : "rgba(131,137,201,0.75)",
				highlightStroke : "rgba(131,137,201,1)",
                                data : [{{TMP_}}]
				//data : [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
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
  </body>

</html>
