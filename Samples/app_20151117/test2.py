import psycopg2

try:
    cnn = psycopg2.connect("dbname=enpit host=localhost user=vagrant password=enpit")
    cur = cnn.cursor()
    from_id = 45
    to_id = 999
    print("INSERT INSERT ==========================")
    pref_cd = 100
    pref_name = u"motemote"
    cur.execute(u"""INSERT INTO t01prefecture(PREF_CD, PREF_NAME)
                VALUES (%s, %s)""" , (pref_cd, pref_name))

    pref_cd = 101
    pref_name = u"yabou"
    cur.execute(u"""INSERT INTO t01prefecture(PREF_CD,PREF_NAME)
                VALUES (%s, %s)""" , (pref_cd, pref_name,))
    cnn.commit()
    cur.execute("""SELECT PREF_CD,PREF_NAME FROM t01prefecture
                WHERE PREF_CD BETWEEN %s AND %s""" , (from_id, to_id, ))
    rows = cur.fetchall()
    for row in rows:
        #print("%d %s" % (row[0],unicode(row[1],'utf-8')))
        print("%d %s" % (row[0],row[1]))
    cnn.commit()
    cur.execute("""SELECT PREF_CD,PREF_NAME FROM t01prefecture
                WHERE PREF_CD BETWEEN %s AND %s""" , (from_id, to_id, ))
    rows = cur.fetchall()
    for row in rows:
        #print("%d %s" % (row[0],unicode(row[1],'utf-8')))
        print("%d %s" % (row[0],row[1]))

    cur.close()
    cnn.close()

except (psycopg2.OperationalError) as e:
    print (e)
