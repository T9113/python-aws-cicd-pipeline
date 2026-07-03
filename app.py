from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return """
    <html>
        <head><title>AWS Serverless CI/CD Complete</title></head>
        <body style="font-family: Arial, sans-serif; text-align: center; margin-top: 100px;">
            <h1 style="color: #2E86C1;">🚀 CodePipeline Deployment Successful! V2</h1>
            <p style="font-size: 18px;">Your Python application is live on AWS EC2 without CodeDeploy Agent dependency chains.</p>
        </body>
    </html>
    """

if __name__ == '__main__':
    # Execute globally across standard public web Port 80
    app.run(host='0.0.0.0', port=80)