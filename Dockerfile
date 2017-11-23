FROM sparklyballs/acestream
MAINTAINER mahoul <mahoul@gmail.com>

# set ports 
EXPOSE 28000 62062

# set default environment variables
ENV LIVEBUFFER=60 \
MAXCONNECTIONS=400 \
MAXPEERS=200 \
DLIMIT=1536 \
ULIMIT=384 \
NETCACHING=500 \
HTTPPORT=28000 \
PUBPORT=28621

#ACEPORT=62062 \

# add required files
ADD dist/aceconfig.py /home/tv/aceproxy-master/
ADD dist/supervisor /etc/default/supervisor
ADD dist/supervisord.conf /etc/supervisor/conf.d/

