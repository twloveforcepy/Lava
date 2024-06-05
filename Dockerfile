# 使用一个官方的 Java 运行时镜像
FROM openjdk:17-jdk-slim

# 设置工作目录
WORKDIR /app

# 下载 Lavalink 最新版本
ADD https://github.com/freyacodes/Lavalink/releases/latest/download/Lavalink.jar lavalink.jar

# 复制 application.yml 到容器中
COPY application.yml ./

# 暴露 Lavalink 默认的端口
EXPOSE 2333

# 启动 Lavalink
CMD ["java", "-jar", "lavalink.jar"]
