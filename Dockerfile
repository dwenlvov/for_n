FROM continuumio/miniconda3:latest

WORKDIR /app

RUN echo "#!/bin/sh\n\necho \\\"Hello Netology\\\"" > 1.sh \
    && chmod +x 1.sh

RUN conda install -y mlflow boto3 pymysql \
    && conda clean -afy

CMD ["/app/1.sh"]
