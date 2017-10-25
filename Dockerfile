FROM alpine
MAINTAINER Vinicius Mucuge <vmucuge@google.com>

ENV APPDIR /opt/autoscaler

# Install Python
RUN apk add --update bash python
RUN rm -rf /var/cache/apk/*

RUN mkdir -p /opt/autoscaler

# Add the files
ADD frontend.py /opt/autoscaler/

# Expose the port 80
EXPOSE 80

CMD [ "python", "/opt/autoscaler/frontend.py" ]
