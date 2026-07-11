
#Stage 1: Builder

FROM python:3.11-slim AS builder
#set work dir
WORKDIR /app

#install Dependencies into a separate folder
COPY app/requirements.txt .
#use --prefix to keep production images tiny and secure by separating the "build" environment from the "runtime" environmen
# Install into a clean, isolated directory
RUN pip install --prefix=/install -r requirements.txt

# stage 2 : Production
FROM python:3.11-slim AS production

#Don't  run as root - security best practice
RUN useradd -m -u 1000 appuser

WORKDIR /app

#Copy only installed packages from builder image 
COPY --from=builder /install /usr/local

#Copy app code
COPY app/ .

# By default, COPY app/ . will copy files as the root user. so switch to non-root
RUN chown -R appuser:appuser /app

USER appuser

EXPOSE 5000

CMD ["python", "app.py"]
