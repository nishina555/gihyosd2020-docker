Software Design 2020年12月号第1特集 第3章で紹介したサンプルアプリケーションです。

<img width="295" alt="スクリーンショット 2020-09-13 21 37 09" src="https://user-images.githubusercontent.com/3121046/93600578-d7730100-f9fa-11ea-8e9d-5ac72faaaa16.png">

名前付きボリュームを利用してデータベースのデータの永続化をしています。データの永続化の挙動を手元で確認する際に活用していただければと思います。

サンプルアプリケーションの作成手順の詳細は[チームで共有するための『Rails 6 x MySQL 8』Docker環境構築手順](https://nishinatoshiharu.com/docker-rails6-mysql8/)をご覧になってください。

## 起動方法

```
$ docker-compose up
```

コンテナ起動時にデータベースのテーブルを自動で作成するようにしているため、`db:migrate`コマンドの手動実行は不要です。

## データの登録方法
`localhost:3000/events/new`のフォームからデータを登録できます。

![スクリーンショット 2020-09-18 22 07 49](https://user-images.githubusercontent.com/3121046/93600986-75ff6200-f9fb-11ea-85a5-8f464ccdb282.png)


## 終了方法

```
# コンテナを削除する場合
$ docker-compose down

# コンテナとデータボリュームを削除する場合
$ docker-compose down --volumes
```

## データボリュームの確認方法

```
$ docker volume ls [ボリューム名]
```

## データボリュームの削除方法

```
$ docker volume rm [ボリューム名]
```

## そのほか
なにかあればIssueやTwitter(<a href="https://twitter.com/nishina555" target="_blank" rel="noopener">@nishina555</a>)でご連絡ください。