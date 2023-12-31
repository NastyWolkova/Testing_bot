FROM python:3.10

WORKDIR  /testing_bot

COPY  ./requirements.txt ./

RUN pip3 install --upgrade setuptools

RUN pip3 install -r ./requirements.txt

RUN chmod 755 .

COPY /. /.

ENV BOT_TOKEN1 5542755585:AAFK2-CFMA2f2TcqUOPT92au2e-GsqvtSjE

ENV ADMIN_IDS 1956887504

CMD [ "python", "bot.py" ] 




# FROM docker/whalesay:latest
# LABEL Name=testingbot Version=0.0.1
# RUN apt-get -y update && apt-get install -y fortunes
# CMD ["sh", "-c", "/usr/games/fortune -a | cowsay"]
