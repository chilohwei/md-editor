# 基于 Node.js 环境
FROM node:14-buster-slim

# 定义工作目录
WORKDIR /app

# 将 package.json 和 package-lock.json 文件复制到工作目录
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 将项目源码复制到工作目录
COPY . .

# 构建项目
RUN npm run build

# 安装 serve 来运行构建后的应用
RUN npm install -g serve

# 告诉 Docker 在容器中运行应用的命令
CMD [ "serve", "-s", "dist" ]

# 开放端口 5000
EXPOSE 5000