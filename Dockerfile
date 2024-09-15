# using python runtime image
FROM python:3.9-slim

# set the working directory  inside container
WORKDIR /app

# copy current directory contents into container at /app
COPY . /app

# make port 5000 available to world outside this container
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]