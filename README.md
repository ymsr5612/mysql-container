# ローカル環境用のmysqlコンテナー構築手順

ローカル環境で開発刷る場合にはこのMySQLコンテナーを利用する

1. githubからmysql-containerを取得

  ```
  $ git clone git@github.com:ymsr5612/mysql-container.git
  ```

2. docker images作成

  ```
  $ docker build -t mysql-container .
  ```

3. docker run

  ```
  $ docker run -d --name mysql5.7-container -p 3336:3306 mysql-container
  ```

4. docker log

  ```
  $ docker logs mysql-container
  ```

5. docker mysql command line client

  ```
  $ docker run -it --link mysql5.7-container:mysql --rm mysql sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -umysqluser -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'
  ```

6. alias for local mysql

  ```
  alias mydb='mysql -h127.0.0.1 -umysqluser --password=abc123$ --port=3336 '
  ```
