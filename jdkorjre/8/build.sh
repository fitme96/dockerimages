if [ $1 == "alpine" ];then
	docker build -t fitme/jre:8u211alpine -f Dockerfile.alpine .
else
	docker build -t fitme/jdk:8u211 .
fi
