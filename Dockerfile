FROM nginx
LABEL server="webmex"
LABEL description="Monitored and Exporter Webserver - webmex"
LABEL version="0.0.1"

WORKDIR /opt
ADD node_exporter-1.4.0-rc.0.linux-amd64 /opt/
ADD nginx.sh /opt/

RUN sh nginx.sh
EXPOSE 9100
CMD [ "/opt/node_exporter" ]
