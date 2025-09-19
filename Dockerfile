# Use official Python image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy your single Python file into the container
COPY hello.py .

# Install dependencies directly (no requirements.txt needed)
RUN pip install --no-cache-dir fastapi uvicorn

# Command to run FastAPI app
CMD ["uvicorn", "hello:app", "--host", "0.0.0.0", "--port", "8000"]
