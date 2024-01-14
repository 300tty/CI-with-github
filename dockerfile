# Final image stage
FROM python:3.9-slim

# Create a non-root user
RUN useradd -m myuser

WORKDIR /app

# Copy application from builder stage
COPY --from=builder /app ./

# Install pytest here to ensure it's available in the final image
RUN pip install pytest

# Switch to non-root user
USER myuser

# Expose port 5000 for the application
EXPOSE 5000

# Set environment variables
ENV FLASK_APP=app.py
ENV FLASK_ENV=production

# Start the application using Gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
