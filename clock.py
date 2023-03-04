from flask import Flask, jsonify
import datetime

app = Flask(__name__)

# route for getting the current time
@app.route('/time', methods=['GET'])
def get_time():
    current_time = datetime.datetime.now().strftime('%H:%M:%S')
    return jsonify({'time': current_time})

if __name__ == '__main__':
    app.run(debug=True)

