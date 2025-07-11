# base image
FROM python:3.12-slim

# working directory
WORKDIR /app

# install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# copy code
COPY . .

# entry point
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]