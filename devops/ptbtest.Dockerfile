FROM python-telegram-bot:latest
# run tests
RUN python -m pytest -m no_req