# Apache PHP MySQL 
Docker running Apache, PHP-FPM, MySQL and PHPMyAdmin.

## Overview

1. [Install prerequisites](#install-prerequisites)

    Before installing project make sure the following prerequisites have been met.

2. [Clone the project](#clone-the-project)

    We’ll download the code from its repository on GitHub.

3. [Run the application](#run-the-application)

    By this point we’ll have all the project pieces in place.

4. [Use Docker Commands](#use-docker-commands)

    When running, you can use docker commands for doing recurrent operations.

___

## Install prerequisites

For now, this project has been mainly created for Unix `(Linux/MacOS)`. Perhaps it could work on Windows.

All requisites should be available for your distribution. The most important are :

* [Git](https://git-scm.com/downloads)
* [Docker](https://docs.docker.com/engine/installation/)
* [Docker Compose](https://docs.docker.com/compose/install/)

Check if `docker-compose` is already installed by entering the following command : 

```sh
which docker-compose
```

On Ubuntu and Debian these are available in the meta-package build-essential. On other distributions, you may need to install the GNU C++ compiler separately.

```sh
sudo apt install build-essential
```

### Images to use

* [Apache](https://hub.docker.com/_/httpd)
* [MySQL](https://hub.docker.com/_/mysql/)
* [PHP](https://hub.docker.com/_/php)
* [PHPMyAdmin](https://hub.docker.com/r/phpmyadmin/phpmyadmin/)


This project use the following ports :

| Server     | Port |
|------------|------|
| mariadb    | 3306 |
| PHPMyAdmin | 8080 |
| apache     | 80/433 |

___

## Clone the project

To install [Git](http://git-scm.com/book/en/v2/Getting-Started-Installing-Git), download it and install following the instructions :

```sh
git clone https://github.com/MarshallJamesRaynor/memento-docker-use.git
```

Go to the project directory :

```sh
cd docker-nginx-php-mysql
```

### Project tree
```
/memento-docker-use/
├── apache
│   ├── Dockerfile
│   └── dev.apache.conf
├── documentation
│   ├── command.md
│   └── compose_file_format.md
├── mariadb
│   └── Dockerfile
├── php
│   └── Dockerfile
└── phpmyadmin
│   └── Dockerfile
└── public_html
│   └── index.php
├── .env
├── .gitignore
├── docker-compose.yml    
├── LICENSE  
└── README.md
```
___

## Run the application


1. Start the application :

    ```sh
    sudo docker-compose up -d
    ```

    **Please wait this might take a several minutes...**

    ```sh
    sudo docker-compose logs -f # Follow log output
    ```

3. Open your favorite browser :

    * [http://localhost:8000](http://localhost:8000/)
    * [https://localhost](https://localhost/) ([HTTPS](#configure-nginx-with-ssl-certificates) not configured by default)
    * [http://localhost:8080](http://localhost:8080/) PHPMyAdmin (username: dev, password: dev)

4. Stop and clear services

    ```sh
    sudo docker-compose down -v
    ```



## Help us

Any thought, feedback or (hopefully not!)