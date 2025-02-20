from flask import flask,jsonify,request
app = Flask(__name__)

@app.route("/hello",methods=['GET'])
def hello world():
    if{request.method == 'GET'}:
            data = "Hello World!"
            return jsonify{data}
if __name__ == "__main__":            
    app.rin(host = '0.0.0.0',port = 9001)