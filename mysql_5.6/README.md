#Mysql 5.6 with dump

Runs mysql 5.6 docker image with a given mysql dump

##Usage

```shell
./run-mysql-dump.sh <name-of-mysql-instance> <db-name> <dump.sql>
```

##Notes

Running the script with the same mysql instance name, will kill any previous images with that name and remove them
