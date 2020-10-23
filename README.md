Software Design 2020年12月号第1特集 第3章で紹介したサンプルアプリケーションです。

<kbd><img width="370" alt="events_index" src="https://user-images.githubusercontent.com/3121046/96992423-d89cce00-1564-11eb-9258-e09f4851ff27.png"></kbd>

名前付きボリュームを利用してデータベースのデータの永続化をしています。データの永続化の挙動を手元で確認する際に活用していただければと思います。

サンプルアプリケーションの作成手順の詳細は[チームで共有するための『Rails 6 x MySQL 8』Docker環境構築手順](https://nishinatoshiharu.com/docker-rails6-mysql8/)をご覧になってください。

## 起動方法

```
$ docker-compose up
```

コンテナ起動時にデータベースのテーブルを自動で作成するようにしているため、`db:migrate`コマンドの手動実行は不要です。

## データの登録方法
`localhost:3000/events/new`のフォームからデータを登録できます。

<kbd><img width="370" alt="events_new" src="https://user-images.githubusercontent.com/3121046/96992738-3fba8280-1565-11eb-9d06-75971d27ac3e.png"></kbd>


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