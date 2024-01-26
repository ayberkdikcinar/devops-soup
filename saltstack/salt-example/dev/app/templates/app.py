from flask import Flask

__version__ = '0.1'

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"

app.run(host='0.0.0.0',port='8000')

