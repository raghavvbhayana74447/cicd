from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "<h1>Hi this page is hosted by ci/cd pipeline</h1>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
