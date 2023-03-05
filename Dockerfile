# base image
FROM python:3.9-alpine

# set the working directory
WORKDIR /app

# copy the requirements file
COPY requirements.txt .

# install the dependencies
RUN pip install -r requirements.txt

# copy the source code
COPY . .

# expose the port the app will run on
EXPOSE 5000

# set the entrypoint
ENTRYPOINT [ "python" ]

# set the command to run the app
CMD [ "app.py" ]

