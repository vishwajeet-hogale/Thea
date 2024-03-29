from flask import Flask, request, Response,jsonify

# import numpy as np
# import cv2
# from PIL import Image
# import sample

app = Flask(__name__)

@app.route('/')
def index():
    return "Backend running on port 5000"

@app.route('/predict', methods=['POST','GET'])
def test():
    if request.method == 'POST':
        r = request
        # convert string of image data to uint8
        file = request.files['image']
        # Read the image via file.stream
        img = Image.open(file.stream)
        img = img.save("img1.jpeg")
        predicted_sentence = sample.get_prediction("img1.jpeg")
        return jsonify({"image_caption":predicted_sentence})
    else :
        return "I'm alive!"



# start flask app
if __name__ == "__main__":
    app.run(debug=TRUE,port=5000)
