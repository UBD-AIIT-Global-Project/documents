#!/usr/bin/env python
# -*- coding:utf-8 -*-

from bottle import route, run, default_app, template, request, static_file, os
import sys
from Dao import Dao
import psycopg2


BASE_DIR = os.path.dirname(os.path.abspath(__file__))
STATIC_DIR = os.path.join(BASE_DIR, 'static')
CSS_DIR = os.path.join(STATIC_DIR, 'css')
JS_DIR = os.path.join(STATIC_DIR, 'js')

@route('/static/css/<filename:path>')
def send_staticCss(filename):
    return static_file(filename, root=STATIC_DIR)

@route('/static/js/<filename:path>')
def send_staticJs(filename):
    return static_file(filename, root=JS_DIR)

@route('/')
def mainPage():
    return template('mainPage')

@route('/title')
def title():
    return template('title')

@route('/Login')
def title():
    return template('userLogin')

@route('/userMyPage')
def title():
    return template('userMyPage')

@route('/mainMenu')
def title():
    return template('mainMenu')


# localhost:8080/show  Sample!!!!!! 
@route('/show', method='GET')
def men():
    #Get Parameter (uername, men)
    username = request.query.username
    men = request.query.men

    # Controller =======================================
    if (username == ""):
        username = "Nanashi"

    if men in {"ramen"}:
        menname = "ramen"
    elif men in {"soba"}:
        menname = "soba"
    elif men in {"udon"}:
        menname = "udon"
    else:
        menname = "Error!!"

    # View =============================================
    # views/show.tpl Call
    return template('show', name=username, men=menname)


if __name__ == '__main__':
    run(host='localhost', port=8070)
else:
    application = default_app()
