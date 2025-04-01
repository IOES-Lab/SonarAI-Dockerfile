# 자동빌드된 이미지 받으려면

```bash
docker pull ioeslab/ioes-sonar-ai:latest
```

# 직접 빌드하려면, 

```bash
docker build -f Dockerfile -t ioes-sonar-ai .
```

# 실행시키려면,

```bash
docker run -it --rm -v /Users/$(whoami):/home/ioes/HOST ioes-sonar-ai /bin/bash
```