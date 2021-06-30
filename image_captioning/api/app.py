from fastapi import FastAPI
from pydantic import BaseModel
from typing import Optional
import sample 
app = FastAPI()

class Predict(BaseModel):
    predicted_sentence : str

@app.get("/")
def index():
    return {"Port 8000":"listening"}
@app.get("/predict")
def predict():
    return {"predicted":sample.get_prediction("th.jpg")}
