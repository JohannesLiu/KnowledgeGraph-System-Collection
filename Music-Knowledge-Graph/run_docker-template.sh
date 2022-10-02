#!/usr/bin/env bash

docker run -d --name mkg \  //-d表示容器后台运行 --name指定容器名字
	-p 7474:7476 -p 7687:7689 \  //映射容器的端口号到宿主机的端口号
	-v /home/neo4j/data:/home/$USER/PycharmProjects/KowledgeGraph-System-Collection/Music-Knowledge-Graph/docker/data \  //把容器内的数据目录挂载到宿主机的对应目录下
	-v /home/neo4j/logs:/home/$USER/PycharmProjects/KowledgeGraph-System-Collection/Music-Knowledge-Graph/docker/logs \  //挂载日志目录
	-v /home/neo4j/conf:/home/$USER/PycharmProjects/KowledgeGraph-System-Collection/Music-Knowledge-Graph/docker/var/lib/neo4j/conf   //挂载配置目录
	-v /home/neo4j/import:/home/$USER/PycharmProjects/KowledgeGraph-System-Collection/Music-Knowledge-Graph/docker/var/lib/neo4j/import \  //挂载数据导入目录
	--env NEO4J_AUTH=neo4j/johannesliu \  //设定数据库的名字的访问密码
	neo4j