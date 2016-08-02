# Using A Docker Zookeeper Image

_This is a simple example that sets up a three server Zookeeper cluster._

```shell
./launch-cluster
```

the above command launches a 3 server zookeeper cluster while exposing the leader for client connections
on port 2181 of localhost

```shell
./shutdown-cluster
```

the above command shuts down the cluster that was brought up using launch-cluster

## Requirements

This example requires [docker version 1.11+](https://www.docker.com/) and
[docker-compose version 1.6+](https://docs.docker.com/compose/).

The directory is already set up for eclipse neon if you "Open Projects From
Filesystem..."

## Running

```shell
docker-compose up
```

_On a separate terminal, you can use the following line to connect to the
five server Zookeeper instance:_

```shell
docker-compose run --rm zkcli -server zookeeper3
```

_There is an intro to zkcli here: [Connecting To
ZooKeeper](https://zookeeper.apache.org/doc/r3.4.8/zookeeperStarted.html#sc_ConnectingToZooKeeper)._
