FROM python:3.8-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
RUN chmod +x run.sh
RUN chmod +x testing.sh 
CMD ["bash", "testing.sh"]
CMD ["bash", "run.sh"]