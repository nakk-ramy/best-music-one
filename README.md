# アプリケーション名
Best Music One

# アプリケーション概要
好きな曲をシェアし、自分の知らない新たな曲に出会うことができる。

# URL
https://best-music-one-38146.herokuapp.com/

# テスト用アカウント
・Basic認証ID：test1122

・Basic認証パスワード：1234

・メールアドレス：test1@test.mail

・パスワード：tete1578

# 利用方法
## 楽曲投稿
1. トップページ(一覧ページ)のヘッダーからユーザー新規登録を行う
2. 新規楽曲投稿ボタンから、楽曲の内容(曲名・アーティスト名・ジャンル(任意)・画像)を入力し投稿する

## アーティストを調べる
1. ヘッダーからアーティスト検索のページに移動する
2. 検索窓にアーティスト名を入れて検索する

## 楽曲の詳細を見る
1. 一覧ページから投稿されている楽曲の画像をクリックして、楽曲の詳細を確認する
2. 楽曲のジャンル、曲のジャケットと曲のプレビューが表示される

# アプリケーションを作成した背景
音楽が好きだが、曲が自身の今まで聴いてきたアーティストや曲に偏りがあるという課題があることが判明した。課題を分析したところ、「好きな曲を共有する場所が欲しい」、「他の人はどんな曲を聴くのか気になる」ということが挙がった。気軽に自身の好きな曲を共有できる場所として、音楽共有アプリケーションを開発しようと至った。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/13ZcLYG48yFKUhKnjFuI9BgqtVlC0CoWI9BX1aMlKyeg/edit?usp=sharing


# 実装した機能についての画像やGIFおよびその説明
SNS認証での新規アカウント作成 ※ニックネーム名は変更しないでください
[![Image from Gyazo](https://i.gyazo.com/9d4685ea28faa767b107b539e8457f84.gif)](https://gyazo.com/9d4685ea28faa767b107b539e8457f84)

投稿ページに必要事項、画像を入力後投稿
[![Image from Gyazo](https://i.gyazo.com/017c64eefade924aef05145e4065942d.gif)](https://gyazo.com/017c64eefade924aef05145e4065942d)

楽曲の詳細ページ、ページ内に楽曲のプレビュー再生機能

アーティスト検索ページでの検索機能

お気に入り機能を非同期通信での実装
[![Image from Gyazo](https://i.gyazo.com/14aa510e6b6d0d7781c64da2426d1cb9.gif)](https://gyazo.com/14aa510e6b6d0d7781c64da2426d1cb9)

マイページの実装
[![Image from Gyazo](https://i.gyazo.com/0aa3fdd8694e47e021ab4adb9680bd21.gif)](https://gyazo.com/0aa3fdd8694e47e021ab4adb9680bd21)

# 実装予定の機能
今後、楽曲ごとにタグ付を行い、検索機能を実装。

SNSでの共有機能を実装予定。


# データベース設計
[![Image from Gyazo](https://i.gyazo.com/24ef1d2591d5325b9617f07070f8ebfd.png)](https://gyazo.com/24ef1d2591d5325b9617f07070f8ebfd)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/f23de1c5546aef430fb595170f95a578.png)](https://gyazo.com/f23de1c5546aef430fb595170f95a578)

# 開発環境
・HTML

・CSS

・Ruby

・Ruby on Rails

・JavaScript

・Spotify API

・Google API

・Twitter API

・GitHub

・Visual Studio Code

# ローカルでの動作方法
% git clone https://github.com/nakk-ramy/best-music-one

% cd best-music-one

% bundle install

% yarn install

# 工夫したポイント
・SNS認証でのアカウントログイン機能を実装を行い、簡単にアカウント作成、ログインができるようにした。

・お気に入り機能を非同期通信での実装を行った。