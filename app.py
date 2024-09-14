from flask import Flask
#instance of flask class
app = Flask(__name__)

#route for url(/)
@app.route('/')
def hello():
    return 'Hello, World!'

if __name__ == '__main__':
    app.run(host='0.0.0.0',port=5000)
