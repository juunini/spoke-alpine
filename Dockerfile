FROM alpine:3.15.0

EXPOSE 9090
ENTRYPOINT \
  apk add npm bash chromium-chromedriver &&\
  npm i -g n &&\
  n v16.14.0 &&\
  npm i -g npm yarn &&\
  git clone https://github.com/mozilla/Spoke.git /home/spoke &&\
  cd /home/spoke &&\
  yarn &&\
  /bin/sh

EXPOSE 9090
CMD ["/bin/sh"]
