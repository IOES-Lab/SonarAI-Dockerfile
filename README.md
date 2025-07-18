## 3D Point Cloud Dataset
[![Publish a Docker image (ARM64; Apple Silicon)](https://github.com/IOES-Lab/SonarAI-Dockerfile/actions/workflows/docker-mac.yaml/badge.svg)](https://github.com/IOES-Lab/SonarAI-Dockerfile/actions/workflows/docker-mac.yaml)

## 사용방법
### 자동빌드된 이미지 받으려면

```bash
docker pull ioeslab/ioes-sonar-ai:latest
```

### 직접 빌드하려면, 

```bash
docker build -f Dockerfile -t ioes-sonar-ai .
```

### 실행시키려면,

```bash
docker run -it --rm -v /Users/$(whoami):/home/ioes/HOST ioes-sonar-ai /bin/bash
```
