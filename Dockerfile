# Using an official python runtime for the parent image
FROM python:2.7-slim

# set working directory to /app
WORKDIR /app

# Copy current direcory and contents into the container at /app
ADD . /app

# install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment Variable
ENV NAME World

# run app.py when the container launches
CMD ["python", "app.py"]
