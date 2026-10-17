FROM python:3.10-slim
WORKDIR /app
RUN echo "from flask import Flask\napp=Flask(__name__)\n@app.route('/')\ndef h(): return 'CI/CD Pipeline works completely via Web Consoles!'\nif __name__=='__main__': app.run(host='0.0.0.0', port=5000)" > app.py
RUN pip install flask
EXPOSE 5000
CMD ["python", "app.py"]
