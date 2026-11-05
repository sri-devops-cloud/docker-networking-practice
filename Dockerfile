FROM alpine:latest
RUN apk add --no-cache iputils
CMD ["sleep", "infinity"]
