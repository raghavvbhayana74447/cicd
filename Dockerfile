FROM python:3.11-slim
WORKDIR /home/raghav/jenkins/workspace/pythonapp
COPY main.py .
EXPOSE 8000
RUN pip install flask
CMD ["python", "main.py"]
