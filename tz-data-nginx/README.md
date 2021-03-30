
# 解决容器时区问题

## use

```shell
docker build -t alpine:3.11-tz .

```

- 给容器增加tz-data 设置时区为Shanghai

- 作为应用镜像的基础镜像
