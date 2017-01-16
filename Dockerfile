FROM gliderlabs/alpine:3.4
ENTRYPOINT ["/bin/logspout"]
VOLUME /mnt/routes
EXPOSE 80

COPY . /src
RUN cd /src && ./build.sh "$(cat VERSION)"

#DY: allow to build child images how-ever we want
#ONBUILD COPY ./build.sh /src/build.sh
#ONBUILD COPY ./modules.go /src/modules.go
#ONBUILD RUN cd /src && ./build.sh "$(cat VERSION)-custom"
