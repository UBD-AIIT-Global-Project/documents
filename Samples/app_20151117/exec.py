import sys
from Dao import Dao
import psycopg2

d1 = Dao()
rows = {}
rows = d1.load01(4,'00000000')
kazu = ''

for row in rows:
        kazu = kazu + "%s" %(row[1]) + "," 
        print("%s %s" % (row[0], row[1]))
kazu = kazu[:-1]
print kazu

d2 = Dao()
rows = {}
#d2.setIndex(1)
rows = d2.load02(1,'20151111000000', '20151112000000')

for row in rows:
        print("%s %s %d %s" % (row[0], row[1], row[2], row[3]))

d4 = Dao()
rows = {}
rows = d4.load04(3,'2015', '11', '11', '12')

for row in rows:
        print("%s %s %d %s" % (row[0], row[1], row[2], row[3]))
