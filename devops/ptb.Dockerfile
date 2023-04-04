FROM python:latest
# update
RUN apt-get -y update
# clone repo
RUN git clone https://github.com/ho-ody/python-telegram-bot.git
WORKDIR "python-telegram-bot/"
# install
RUN python setup.py install
# pip install all requirements
RUN pip install -r requirements-dev.txt tornado pytz python-telegram-bot[passport] python-telegram-bot[http2] python-telegram-bot[callback-data]