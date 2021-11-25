# 食材管理アプリ

![スクリーンショット 2021-12-04 19 50 50](https://user-images.githubusercontent.com/78095577/144706808-8b93d4ca-ca08-4387-a449-e613fd2057a4.png)

# アプリ概要

購入した食材のロスを無くすための食材管理アプリです。
食材管理の他に、買い物メモ、YouTube でレシピ検索などができます。

# URL

https://ingredient-manager.herokuapp.com/

ゲストログインボタンからゲストユーザーとしてログイン可能です。

# 作成背景

### 冷蔵庫の中の物のうっかり忘れを無くしたい

前職で飲食の仕事をしていて、うっかり冷蔵庫の食材をダメにしてしまうことがあり、食材を管理できるアプリが欲しいと思い作成しました。  
作成するにあたって、ただ文字だけを並べても見にくいので、一目見ただけで食材の期日がわかるようにカレンダーと連動させ、一般家庭向けに買い物メモとレシピ検索も一つのアプリでできればと思い作成しました。

# 機能一覧

#### ユーザー登録機能

- メールアドレス
- パスワード

#### ログイン機能

- devise でログイン機能を実装
- ゲストログイン機能を実装
- パスワードを忘れた場合のパスワード再発行機能

#### 管理者ページ

- ActiveAdmin で実装
  - ユーザー登録・編集・削除
  - 投稿の登録・編集・削除

#### 投稿ページ

- 商品名・ジャンル・賞味期限・備考を登録する機能
- 編集機能
- 削除機能
- ジャンル分け機能

#### メモページ

- 投稿機能
- 編集機能
- 削除機能

#### 検索ページ

- YouTubeAPI 検索機能(キーワード検索)

# トップページ

![画面収録 2021-12-04 21 37 54](https://user-images.githubusercontent.com/78095577/144709810-ec3a72bf-8716-4347-a526-efd40ebef98b.gif)

# 在庫一覧ページ

![画面収録 2021-12-04 22 02 42](https://user-images.githubusercontent.com/78095577/144710765-61a71783-dc81-4e11-984d-d5bd3ca341c7.gif)

# 買い物リストページ

![画面収録 2021-12-04 22 07 18](https://user-images.githubusercontent.com/78095577/144710814-086ca5fc-d566-43e7-b94b-37a7320f165a.gif)

# 使用技術

# ER 図

![スクリーンショット 2021-12-04 19 28 55](https://user-images.githubusercontent.com/78095577/144706410-0b400f5a-8431-4a3f-ba17-7eb292948b9a.png)

# 画面遷移図

![スクリーンショット 2021-12-04 19 37 50](https://user-images.githubusercontent.com/78095577/144706486-6320aad2-a99d-4a50-95df-0bb4b36e3ad9.png)
