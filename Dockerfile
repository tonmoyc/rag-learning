# This Dockerfile sets up a Jupyter Lab environment with the specified dependencies.
# It uses a slim Python 3.11 image, installs the required packages from requirements.txt,
# and exposes port 8888 for accessing Jupyter Lab.

FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]

