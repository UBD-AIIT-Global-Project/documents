import psycopg2

try:
    cnn = psycopg2.connect("dbname=enpit host=localhost user=vagrant password=enpit")
    cur = cnn.cursor()

    print("SELECT SELECT")
    from_id = 45
    to_id = 999
    cur.execute("""SELECT PREF_CD,PREF_NAME FROM t01prefecture
                WHERE PREF_CD BETWEEN %s AND %s""" , (from_id, to_id, ))
    rows = cur.fetchall()
    for row in rows:
        #print("%d %s" % (row[0], unicode(row[1],'utf-8')))
        print("%d %s" % (row[0], row[1]))
    cur.close()
    cnn.close()

except (psycopg2.OperationalError) as e:
    print (e)
