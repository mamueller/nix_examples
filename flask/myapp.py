#! /usr/bin/env python
import subprocess
from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello, Nix!"

def run():
    res=subprocess.run(['qemu-x86_64','-h'])
    print(res)
    app.run(host="0.0.0.0")

if __name__ == "__main__":
    run()
