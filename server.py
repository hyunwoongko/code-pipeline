from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def index():
    return "Dummy server is on !!!"


@app.get("/health")
def health():
    return {"server": 200}

