FROM eugenwintersberger/docker-ubuntu-17.10

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y libgl1-mesa-dev pkg-config

COPY CMakeLists.txt build.ninja ./
COPY cmake cmake
COPY src1 src

RUN ./build.ninja

COPY src src

RUN ./build.ninja
