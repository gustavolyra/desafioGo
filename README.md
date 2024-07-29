Docker hub link: https://hub.docker.com/repository/docker/gustavolyra/fullcycle/general

docker push gustavolyra/fullcycle:tagname

-> Update dockerfile
change RUN go build
--->RUN go build -o main -ldflags "-s -w" .
