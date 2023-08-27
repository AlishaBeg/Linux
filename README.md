

### Update Linux System

```
sudo apt update
```

### Install Git Bash for Linux

```
sudo apt install git-all
```

### Install Database in Linux

```
sudo apt-get install mysql-server mysql-client -y
```

```
sudo apt-get install mariadb-server mariadb-client -y
```

#### Secure Database

```
sudo mysql_secure_installation
```

#### Use Database

```
mysql -u root -p
```

#### Service Status 

```
systemctl status mariadb 
```

#### Service Active

```
systemctl start mariadb
```

#### Service Enable

```
systemctl enable --now mariadb
```

### SET or Rest MySQL admin password

```
mysqladmin -u root password 'password'
```

```
mysqladmin -u root -h $(hostname) password 'password'
```

### 

To enable remote connection, open the 50-server.cnf file. You can find this file in the /etc/mysql/mariadb.conf.d/ location.

```
sudo vi /etc/mysql/mariadb.conf.d/50-server.cnf
```

Find the bind-address parameter and replace the bind-address value from 127.0.0.1 to 0.0.0.0 as shown below.

```
bind-address = 0.0.0.0
```

In MariaDB, a user is identified along with the host address. You can list all the users using the following SQL query.

```
SELECT User, Host FROM mysql.user;
```

Now, try connecting to the dbadmin MariaDB database from the remote host.


```
mysql -u dbadmin -p -h 192.168.10.5
```

| MariaDB Configuration	| Details |
|---|---|
|MariaDB default port | 3306|
|TCP Socket file | /run/mysqld/mysqld.sock|
|MariaDB Config Files location | /etc/mysql/mariadb.conf.d|
|MariaDB Server Configuration file | /etc/mysql/mariadb.conf.d/50-server.cnf|

### HOW TO INSTALL PHP 

It is command to install php it include php lanuage with apache server if it not install apache you are use next commapnd

```
apt-get install php
```

how to install apache server

```
apt-get install apache2
```

#### START APACHE SERVER

```
systemctl start apache2
```

#### STOP APACHE SERVER

```
systemctl stop apache2
```

#### RESTART APACHE SERVER

```
systemctl restart apache2
```

### Service Restart

```
systemctl restart mariadb
```





