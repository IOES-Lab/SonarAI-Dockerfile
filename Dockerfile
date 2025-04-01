FROM arm64v8/ubuntu:24.04

ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENV DEBIAN_FRONTEND=noninteractive

# 기본 패키지 설치
RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential cmake git curl sudo wget unzip pkg-config \
    software-properties-common htop nano wget cppcheck systemd init \
    pkg-config lsb-release libtool automake bison flex ruby \
    && apt-get clean

# MiniConda 설치
RUN wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-aarch64.sh --no-check-certificate && \
    chmod +x /Miniconda3-latest-Linux-aarch64.sh && \
    bash /Miniconda3-latest-Linux-aarch64.sh -b -p /opt/conda && \     
    rm /Miniconda3-latest-Linux-aarch64.sh
ENV PATH=/opt/conda/bin:$PATH

RUN conda install -y python=3.10 pip
RUN conda clean -ya 
RUN echo "export PATH=/opt/conda/bin:\$PATH" > /etc/profile.d/conda.sh
ENV PYTHONUNBUFFERED=1

# pip 패키지 설치
RUN pip install --root-user-action=ignore --upgrade pip && \
    pip install --root-user-action=ignore \
    numpy cython wheel \
    torch torchvision torchaudio open3d \
    scikit-learn matplotlib tqdm \
    && rm -rf ~/.cache/pip

# YOLO 설치
RUN git clone https://github.com/ultralytics/ultralytics.git /yolo && \
    pip install -e /yolo

# 유저 생성
ARG USER=ioes
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN adduser --shell /bin/bash --disabled-password --gecos '' $USER \
    && echo "$USER:$USER" | chpasswd && adduser $USER sudo \
    && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# 작업 디렉토리
USER ioes
WORKDIR /home/ioes

# 빌드하려면, 
# docker build -f Dockerfile -t ioes-pcl .
# 실행시키려면,
# docker run -it --rm -v /Users/$(whoami):/home/ioes/HOST ioes-pcl /bin/bash

