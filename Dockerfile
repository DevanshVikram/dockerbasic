# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.12-slim




WORKDIR .
COPY app.py .
COPY mushrooms.csv .
# RUN python -m pip install --upgrade pip
RUN pip install streamlit
EXPOSE 8501
# Creates a non-root user with an explicit UID and adds permission to access the /app folder


# During debugging, this entry point will be overridden. For more information, please refer to https://aka.ms/vscode-docker-python-debug
ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]