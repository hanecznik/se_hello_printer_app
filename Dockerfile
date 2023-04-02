FROM python:3

ARG APP_DIR=/Users/grapefruit/Desktop/learning/WSB/sunday02.04

WORKDIR /tmp
ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

RUN mkdir -p $APP_DIR
ADD hello_world/ $APP_DIR/hello_world/
ADD main.py $APP_DIR

CMD PYTHONPATH=$PYTHONPATH:/Users/grapefruit/Desktop/learning/WSB/sunday02.04 \
        FLASK_APP=hello_world flask run --host=0.0.0.0