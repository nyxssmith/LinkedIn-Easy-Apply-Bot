FROM ubuntu:20.04

RUN apt update && apt install -y python3 python3-pip

RUN pip3 install selenium

WORKDIR /app
# src
COPY assets /app/assets
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# modifiable code
COPY easyapplybot.py /app/easyapplybot.py
COPY config_nyx.yaml /app/config.yaml

#ENV DISPLAY=:0
# docs
# TODO copy resume etc
#run
CMD ["python3","easyapplybot.py"]

#CMD [ "python3","Run_All_Tests.py" ]