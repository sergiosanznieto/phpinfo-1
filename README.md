# phpinfo

```
git clone https://github.com/sergiosanznieto/phpinfo-1
cd phpinfo-1
git checkout main
```
```
php -f src/index.php -S 0.0.0.0:8080
```
```
curl localhost:8080/src/index.php
```
Instrucciones para contruir imagen docker
```
git checkout santander
docker build --file Dockerfile --tag sergiosanz/phpinfo:santander .
```
```
docker run -d --entrypoint /usr/bin/php --name phpinfo -p 8080:8080 -v ${PWD}/src/index.php:/src/index.php:ro sergiosanz/phpinfo:santander -f src/index.php -S 0.0.0.0:8080
```
Instrucciones para desplegar la aplicacion en Swarm
docker stack deploy -c docker-compose.yaml phpinfo
