FROM openjdk:alpine

ENV ACTIVATOR_VERSION 1.3.12

RUN apk add --update-cache bash
ADD activator-dist-${ACTIVATOR_VERSION} /opt/activator
RUN mkdir -p /workdir

EXPOSE 8888
EXPOSE 9000

WORKDIR /workdir
ENTRYPOINT ["/opt/activator/bin/activator", "-Dhttp.address=0.0.0.0"]
CMD ["ui"]
