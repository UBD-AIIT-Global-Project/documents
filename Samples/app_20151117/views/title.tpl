<!DOCTYPE html>
 
% import sys
% from Dao import Dao
% import psycopg2

% # List Sample
% data = [0,1,2,3] 
% aaa = '' 
% bbb = '' 

% # DB Access(Parameter=1)
% d1 = Dao()
% rows  = {}
% rows = d1.load01(0,'00000000')

% # DB Access(Parameter=4)
% d2 = Dao()
% rows2  = {}
% rows2 = d2.load04(3,'2015', '11', '11', '12')

<html lang=ja>
  <head>
    <meta charset="UTF-8">
    <title>TitlePage</title>
  </head>

  <body>
    <h1>TitlePage</h1>

    <form method="GET" action="/show">
    <p>What is your name?<br>
    <input type="text" name="username"></p>

    <p>What menrui do you like?</p>
    <form>
    <select name="men">
      <option value="ramen">ramen</option>
      <option value="soba">soba</option>
      <option value="udon">udon</option>
    </select>
    <input type="submit" value="sousin">
    </form>
    <table>
% for i in range(len(data)): 
%    aaa = data[i]
      <tr><td>{{aaa}}</td></tr>
% end
    </table>
    <table>
      <tr><td>------QUERY[0] --> SELECT SENSOR_ID,VALUE,IVALUE,STR_TIMESTAMP FROM TBL20001_SENSOR_DATA  WHERE SENSOR_ID = %s --------</td></tr>
    </table>

    <table>
      <tr><td>SENSOR_ID</td><td>VALUE</td><td>INT_VALUE</td><td>TIMESTAMP</td></tr>
% # Loop
% for row in rows: 
%    aaa = row[0]
%    bbb = row[1]
%    ccc = row[2]
%    ddd = row[3]
      <tr><td>{{aaa}}</td><td>{{bbb}}</td><td>{{ccc}}</td><td>{{ddd}}</td></tr>
% end
    </table>

    <table>
      <tr><td>------QUERY[3] --> SELECT SENSOR_ID,VALUE,IVALUE,STR_TIMESTAMP FROM TBL20001_SENSOR_DATA  WHERE STR_YEAR = %s AND STR_MON = %s AND STR_DAY = %s AND STR_HH = %s"--------</td></tr>
    </table> 

    <table>
      <tr><td>SENSOR_ID</td><td>VALUE</td><td>INT_VALUE</td><td>TIMESTAMP</td></tr>
% # Loop
% for row in rows2: 
%    aaa = row[0]
%    bbb = row[1]
%    ccc = row[2]
%    ddd = row[3]
      <tr><td>{{aaa}}</td><td>{{bbb}}</td><td>{{ccc}}</td><td>{{ddd}}</td></tr>
% end
      <tr><td>--------------</td></tr>
    </table>
  </body>
</html>

