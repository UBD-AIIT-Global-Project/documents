import psycopg2
from Query import Query

class Dao:
    def __init__(self):
        #query = ''
        #cnn = psycopg2.connect("dbname=enpit host=localhost user=vagrant password=enpit")
        cnn = psycopg2.connect("dbname=enpit host=52.33.44.1 user=vagrant password=enpit")
        cur = cnn.cursor()
        self.q1 = Query()
        self.cnn = cnn
        self.cur = cur

    def close(self,cur,cnn):
        cur.close()
        cnn.close()

    # For QueryParameter 1 
    def load01(self, index, para1):
        result = {}
        self.query = self.q1.getQueryStr(index)
        self.cur.execute(""+self.query+"", (para1,))
        rows = self.cur.fetchall()
        self.close(self.cur,self.cnn)
        return rows

    # For QueryParameter 2
    def load02(self, index, para1, para2):
        result = {}
        self.query = self.q1.getQueryStr(index)
        self.cur.execute(""+self.query+"", (para1, para2, ))
        rows = self.cur.fetchall()
        self.close(self.cur,self.cnn)
        return rows

    # For QueryParameter 3 
    def load03(self, index, para1, para2, para3):
        result = {}
        self.query = self.q1.getQueryStr(index)
        self.cur.execute(""+self.query+"", (para1, para2, para3))
        rows = self.cur.fetchall()
        self.close(self.cur,self.cnn)
        return rows

    # For QueryParameter 4 
    def load04(self, index, para1, para2, para3, para4):
        result = {}
        self.query = self.q1.getQueryStr(index)
        self.cur.execute(""+self.query+"", (para1, para2, para3, para4))
        rows = self.cur.fetchall()
        self.close(self.cur,self.cnn)
        return rows

