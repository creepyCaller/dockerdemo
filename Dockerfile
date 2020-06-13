# 双FROM写法，第一个FROM是在maven:3中打包
FROM maven:3 AS bd
# 工作目录: /code
WORKDIR /code
# 把当前目录下所有文件复制到工作目录
COPY ./ /code
# 运行命令行
RUN mvn package -Dskip.test=true

# 第二个FROM是在java:8中启动
FROM java:8
# 拷贝上面那个（别名为bd=build）打包好的jar包到这边容器的根目录的app.jar
COPY --from=bd /code/target/daoclouddemo-0.0.1-SNAPSHOT.jar /app.jar
# 运行之
CMD java -jar /app.jar
