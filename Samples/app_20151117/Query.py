import sys

# Configure Query String Class 

class Query:
    def __init__(self):
        self.queryStr  = '' 
        self.queryList = [ "SELECT SENSOR_ID,VALUE,IVALUE,STR_TIMESTAMP FROM TBL20001_SENSOR_DATA  WHERE SENSOR_ID = %s", 
                      "SELECT SENSOR_ID,VALUE,IVALUE,STR_TIMESTAMP FROM TBL20001_SENSOR_DATA  WHERE STR_TIMESTAMP BETWEEN %s AND %s" , 
                      "SELECT SENSOR_ID,VALUE,IVALUE,STR_TIMESTAMP FROM TBL20001_SENSOR_DATA  WHERE STR_TIMESTAMP BETWEEN %s AND %s AND SENSOR_ID = %s" , 
                      "SELECT SENSOR_ID,VALUE,IVALUE,STR_TIMESTAMP FROM TBL20001_SENSOR_DATA  WHERE STR_YEAR = %s AND STR_MON = %s AND STR_DAY = %s AND STR_HH = %s",  
                      "SELECT SENSOR_ID,IVALUE FROM TBL20001_SENSOR_DATA  WHERE  SENSOR_ID = %s" ] 

    def getQueryStr(self,index):
        self.queryStr = self.queryList[index]
        return self.queryStr

