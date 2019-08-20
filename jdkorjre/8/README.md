# 说明

### 需要通过浏览器下载jre/jdk包
- 基于CentOS制作
见Dockerfile
- 基于alpine制作
见Dockerfile.alpine
- 构建见build.sh


## 如果是jre，Dockerfile中应该是JRE_HOME,否则JAVA_HOME。


## alpine制作jre镜像安装glibc
- https://github.com/sgerrand/alpine-pkg-glibc
