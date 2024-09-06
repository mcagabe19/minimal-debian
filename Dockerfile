FROM arm64v8/ubuntu:latest
RUN apt-get update && apt-get install -y qemu-user-static
RUN docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
