FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

RUN pip install fastapi uvicorn[standard] numpy pydantic

EXPOSE 80

COPY ./app /app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]

#upgrade pip to avoid error 
#RUN pip install --upgrade pip

# Make directories suited to your application
#RUN mkdir -p /home/project/app
#WORKDIR /app

# Copy contents from your local to your docker container
#COPY app/ /app

# Copy and install requirements
#RUN pip install --trusted-host pypi.python.org -r requirements.txt


#EXPOSE 8000

#ENTRYPOINT ["streamlit","run"]

#CMD ["app.py"]
