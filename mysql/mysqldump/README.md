1. Create MySQL(5.7.14) database dump using docker container
```
$ docker run --rm mysql:5.7.14 sh -c 'exec mysqldump -h localhost --port 3306 -u test_user -ptest_password test_db' > /home/user/dumps/dump.sql
```

Links:<br/>
[Docker MySQL](https://hub.docker.com/_/mysql)
