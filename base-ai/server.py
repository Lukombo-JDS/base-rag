from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/health")
async def healthServer():
    return {"message": "Ok everything good so far"}


@app.post("/request")
async def userRequests():
    return {""}


@app.get("/chats")
async def listingChats():
    return {""}
