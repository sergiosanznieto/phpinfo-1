# phpinfo

DOWNLOAD GITHUB REPOSITORY
```
git clone https://github.com/academiaonline/phpinfo
cd phpinfo
git checkout main
```
## TRADITIONAL DEPLOYMENT (WITHOUT CONTAINERS)
RUN THE APPLICATION WITHOUT CONTAINERIZATION (AFTER INSTALLING PHP IN YOUR SYSTEM)
```
php -f src/index.php -S 0.0.0.0:8080
```
TEST THE RUNNING APPLICATION (AFTER INSTALLING CURL IN YOUR SYSTEM)
```
curl localhost:8080/src/index.php
```
## MODERN DEPLOYMENT (WITH CONTAINERS)
CHECKOUT THE BRANCH WITH THE CONTAINERIZED APPLICATION
```
git checkout 2021-10
git pull
```
BUILD THE DOCKER IMAGE
```
mkdir /build-context/
docker build --filename Dockerfile --tag academiaonline/phpinfo:latest /build-context/
```
(ALTERNATIVE WAY) BUILD THE DOCKER IMAGE USING DOCKERIGNORE
```
docker build --filename Dockerfile --tag academiaonline/phpinfo:latest .
```
