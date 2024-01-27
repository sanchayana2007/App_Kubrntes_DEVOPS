from flask import Flask,request

app = Flask(__name__)


@app.route('/')
def index():
    user_agent = request.headers.get('User-Agent')
    ua= "User-Agent:" + user_agent
    return 'Welcome to 2022  ' + ua


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
