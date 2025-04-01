
# 자동빌드된 이미지 받으려면
docker pull ioeslab/ioes-sonar-ai:latest

# 직접 빌드하려면, 
docker build -f Dockerfile -t ioes-sonar-ai .

# 실행시키려면,
docker run -it --rm -v /Users/$(whoami):/home/ioes/HOST ioes-sonar-ai /bin/bash