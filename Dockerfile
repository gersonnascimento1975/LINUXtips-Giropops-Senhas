FROM python:3.11
WORKDIR /app
COPY requirements.txt .
COPY app.py .
COPY templates templates/
COPY static static/
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --upgrade FLASK
RUN pip install --upgrade pytest
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]
