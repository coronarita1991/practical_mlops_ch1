# app/main.py
from fastapi import FastAPI
from app.add import add

app = FastAPI()


@app.get("/add")
def add_endpoint(x: int, y: int):
    return {"result": add(x, y)}
