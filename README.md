# アプリ概要

購入した食材のロスを無くすための食材管理アプリです。
食材管理の他に、買い物メモ、YouTube でレシピ検索などができます。

# URL

https://ingredient-manager.herokuapp.com/

ゲストログインボタンからゲストユーザーとしてログイン可能です。

# 作成背景

### 冷蔵庫の中の物のうっかり忘れを無くしたい

- 前職で飲食の仕事をしていて、うっかり冷蔵庫の食材をダメにしてしまうことがあり、食材を管理できるアプリが欲しいと思い作成した。
- ただ文字だけを並べても見にくいのでカレンダーと連動させて一目見ただけで食材の期日がわかるようになればと思った。
- 一般家庭向けに買い物メモとレシピ検索も一つのアプリでできればと思った。

## 機能一覧

- ユーザー登録機能

  - メールアドレス
  - パスワード

- ログイン機能

  - devise でログイン機能を実装
  - ゲストログイン機能を実装
  - パスワードを忘れた場合のパスワード再発行機能

- 管理者ページ

  - ActiveAdmin で実装
    - ユーザー登録・編集・削除
    - 投稿の登録・編集・削除

- 投稿ページ

  - 商品名・ジャンル・賞味期限・備考を登録する機能
  - 編集機能
  - 削除機能
  - ジャンル分け機能

- メモページ

  - 投稿機能
  - 編集機能
  - 削除機能

- 検索ページ
  - YouTubeAPI 検索機能(キーワード検索)

# 開発で工夫したこと
