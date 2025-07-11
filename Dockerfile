FROM ubuntu:22.04

WORKDIR /SynDataGen_TP

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    unzip \
    dos2unix \ 
    && rm -rf /var/lib/apt/lists/*


RUN pip3 install pipenv urllib3

COPY ./ /SynDataGen_TP/


# Install dependencies
RUN pip3 install -r requirements.txt

CMD ["/bin/bash", "/SynDataGen_TP/Scripts/app_run.sh"] 
