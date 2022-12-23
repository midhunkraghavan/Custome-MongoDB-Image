
# Step 1

FROM alpine

# Step 2 install softwares

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/main' >> /etc/apk/repositories
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/community' >> /etc/apk/repositories

RUN apk update
RUN apk add mongodb=3.4.4-r0 

# Configure the softwares

VOLUME ["/data/db"]
WORKDIR /data
EXPOSE 27017

# Set default commands

CMD ["mongod"]