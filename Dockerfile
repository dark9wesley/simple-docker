FROM node:10

LABEL maintainer=pengyw97@gmail.com

# 创建app目录
WORKDIR /app

# 把package.json以及lock文件复制到工作目录
# COPY ['package.json', '*.lock']

# 打包src源码
# 特别注意 要指定工作目录中的文件名
# COPY src ./src

# 使用了dockerignore后，可以直接使用以下命令，只COPY自己想要的
COPY . .

# 检查文件
RUN ls -la /app

# 使用yarn安装依赖
# 只安装生产环境依赖，使用--prod
RUN yarn --prod

# 对外暴露端口
EXPOSE 3000

CMD ["node", "src/index.js"]


