from bottle import route, run
 
@route('/hello')
def hello():
  return "<html><head></head><body>Hello World!</body><html>"
run(host='127.0.0.1', port=7080)
