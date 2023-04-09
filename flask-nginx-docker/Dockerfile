# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory to app/
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requriements.txt, pass yes to apt prompt
RUN pip install -U Flask
RUN apt update
RUN yes | apt install nginx

# Expose port 80 for nginx
EXPOSE 80

# Start Nginx and run Flask application (this will be the entrypoint, the process what keeps alive the container)
CMD bash start-nginx.sh && python3 app.py

# These are not working! Leave it here for educative purpose, ordeer was the key, maybe these could too.
# The sequence/order was the problem, the & operator means that the second command is executed only when the first is executed successfully
# ENTRYPOINT python3 app.py
# CMD bash start-nginx.sh
# CMD service nginx start && python3 app.py && nginx -c /app/nginx.conf
# CMD ["systemctl start nginx.service", "service nginx start", "python3 app.py", "flask run"]

