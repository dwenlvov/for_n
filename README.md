# for_n
## Сам докерфайл
FROM continuumio/miniconda3:latest

WORKDIR /app

RUN echo "#!/bin/sh\n\necho \\\"Hello Netology\\\"" > 1.sh \
    && chmod +x 1.sh

RUN conda install -y mlflow boto3 pymysql \
    && conda clean -afy

CMD ["/app/1.sh"]


## Лог сборки:
[+] Building 180.7s (8/8) FINISHED                         docker:desktop-linux
 => [internal] load build definition from Dockerfile                       0.0s
 => => transferring dockerfile: 581B                                       0.0s
 => [internal] load .dockerignore                                          0.0s
 => => transferring context: 2B                                            0.0s
 => [internal] load metadata for docker.io/continuumio/miniconda3:latest   7.1s
 => [1/4] FROM docker.io/continuumio/miniconda3:latest@sha256:6a66425f0  142.7s
 => => resolve docker.io/continuumio/miniconda3:latest@sha256:6a66425f001  0.0s
 => => sha256:bf48386a4aeedae5ed4c3d002c45cc29de20517e1e7a85a 869B / 869B  0.0s
 => => sha256:9ae76c5f4d958399f9a3adeaa6ed2425fd486d05150 5.49kB / 5.49kB  0.0s
 => => sha256:bb3f2b52e6af242cee1bc6c19ce79e05544f8a1d 28.06MB / 28.06MB  44.1s
 => => sha256:ca9a1c10eb8b64b4c754bb036f1d05beb401d0d 62.31MB / 62.31MB  137.0s
 => => sha256:35fcb8ec2e41774512abefd6b147c2f35b08a 116.70MB / 116.70MB  138.5s
 => => sha256:6a66425f001f739d4778dd732e020afeb06175f4947 2.36kB / 2.36kB  0.0s
 => => extracting sha256:bb3f2b52e6af242cee1bc6c19ce79e05544f8a1d13f5a6c1  1.2s
 => => extracting sha256:ca9a1c10eb8b64b4c754bb036f1d05beb401d0d8ac84c5ef  2.1s
 => => extracting sha256:35fcb8ec2e41774512abefd6b147c2f35b08a409435bd615  3.4s
 => [2/4] WORKDIR /app                                                     0.5s
 => [3/4] RUN echo "echo "Hello Netology"" > 1.sh     && chmod +x 1.sh     0.1s
 => [4/4] RUN conda install -y mlflow boto3 pymysql     && conda clean -  27.0s
 => exporting to image                                                     3.2s
 => => exporting layers                                                    3.2s
 => => writing image sha256:0d4e2ce026170ca301b41ce0a9e9659194f32655d4ccb  0.0s
 => => naming to docker.io/library/netology-ml:netology-ml                 0.0s
