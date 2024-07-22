FROM python:3.12
RUN pip install poetry
RUN pip install streamlit
COPY . /src
WORKDIR /src
RUN poetry install
EXPOSE 8501
ENTRYPOINT ["streamlit","run","app.py"]
