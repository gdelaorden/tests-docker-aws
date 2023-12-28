# Base python docker image
FROM python:3.9.7-alpine

# Import Code

## Add current directory, specified by the "."
ADD . /code

# Changing the directory
WORKDIR /code

# Installing lib
RUN pip install flask

# Exposing the port
EXPOSE 50001

# Running python file
CMD python main.py