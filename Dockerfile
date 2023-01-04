FROM node:lts-alpine
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories
RUN apk update && apk add git curl openssh
WORKDIR /app
ADD vue-element-admin-master.zip /app/
RUN npm install
CMD ash
