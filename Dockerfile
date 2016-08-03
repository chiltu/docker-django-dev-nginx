FROM	python:2.7
ENV	PYTHONUNBUFFERED 1
RUN	mkdir -p /code/logs \
		&& mkdir -p /etc/uwsgi/vassals \
		&& mkdir -p /var/log/uwsgi
ADD	./requirements.txt /code/requirements.txt
RUN     pip install -r /code/requirements.txt
WORKDIR	/code
COPY	. /code
RUN	ln -s /code/deployment/composeexample_uwsgi.ini /etc/uwsgi/vassals/ \
		&& ln -s /code/deployment/emperor.ini /etc/uwsgi/

