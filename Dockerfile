FROM alpine:latest
WORKDIR /apps
RUN apk add --no-cache tzdata
ENV TZ=Asia/Kolkata
RUN wget https://static.snyk.io/cli/latest/snyk-alpine 
RUN chmod +x snyk-alpine
RUN mv snyk-alpine /usr/local/bin/snyk
