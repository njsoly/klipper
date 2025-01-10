FROM ubuntu:latest
LABEL authors="njsoly"

ENTRYPOINT ["top", "-b"]
