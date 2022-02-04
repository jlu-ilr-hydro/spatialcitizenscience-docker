# pull official base image
FROM python:latest

# set work directory
WORKDIR /app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN apt-get install git
RUN pip install --upgrade pip wheel waitress
RUN pip install git+https://github.com/jlu-ilr-hydro/spatialcitizenscience
COPY ./example /app
ENTRYPOINT ['waitress-serve --port=8000 --call spatialcitizenscience:create_app']
