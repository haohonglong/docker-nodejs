ARG NODE_VER=12.14.0
FROM node:${NODE_VER}
MAINTAINER haohonglong github.com/haohonglong/docker-lnmp
RUN npm install npm -g
#安装cnpm pm2
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org \
    && cnpm install -g pm2 
    
RUN npm install -g vue-cli

EXPOSE 3000 9528
CMD top