# アプリ名 
## Platt

## アプリの概要 
ユーザー登録を行うことでツイートすることが出来るようになり、意見を共有することが出来ます。<br>
またその意見に対してコメントすることが出来、コミュニケーションが可能です。<br>
ログインしていないユーザーはタイムラインでツイートを見ることが出来ますが<br>
ツイートの詳細をみたい場合はログインページにリダイレクトされます。<br>
自身が投稿したツイートはマイページから確認することが削除することが出来ます。

## URL
54.168.232.110

## テスト用アカウント
メールアドレス<br>
bb@bb.com

パスワード<br>
111111

## アプリ利用方法
新規登録をしてログインします。右下にNEWと書かれた投稿ボタンを押して自身の感想を投稿します。<br>
他ユーザーが投稿した内容にコメントをつけてコミュニティを作ります。

## 目指した課題解決
同じ目的を持つユーザー同士のコミュニティがなかったので
これを解決したかった

## 洗い出した要件
### README作成 
#### 目的<br>どのような機能をを作成するか決める<br>
#### 詳細<br>DBにh保存するテーブル作成<br>ER図の作成<br>
#### ストーリー<br>usersテーブル、tweetsテーブル、commentsテーブルを作成しそれぞれに入るカラム名を記入。<br>ER図を使用してテーブルのアソシエーションを可視化する。

### インデックス作成（トップページ作成) 
#### 目的<br>ツイート内容が一覧できるようにする 
#### 詳細<br>ツイート内容が降順に表示されるログインしていなくても見れる<br>
#### ストーリー<br>固定ヘッダーをつけ、投稿内容が中央に表示される。 一覧には画像とタイトルが表示される。 投稿内容をクリックすると詳細ページに行く。

### 投稿機能の実装 
#### 目的<br>ツイートを投稿できるようにする
#### 詳細<br>投稿ページで各項目を記入して投稿する
#### ストーリー<br>投稿ボタンを押すと投稿ページに遷移して画像、タイトル、説明文(感想)を記入して投稿する。 記入漏れがあればエラーメッセージが表示される。

### 詳細機能の実装 
#### 目的<br>ツイートの詳細を表示できるようにする
#### 詳細<br>投稿したツイートの詳細が確認できる
#### ストーリー<br>投稿したツイート内容（画像、タイトル、説明文(感想)が見れる。 自分が投稿したツイートには削除機能がついている。 また、コメントすることでコミュニケーションを取ることが可能。

### ユーザー管理機能 
#### 目的<br>新規登録、ログイン機能を実装する
#### 詳細<br>ユーザーとしてログインすることで投稿できるようになる
#### ストーリー<br>新規登録では名前、メールアドレス、パスワードが必要。 ログインではメールアドレスとパスワードが必要。<br>ログイン後、ログインしているユーザーの名前が出るのでクリックするとマイページに遷移することができる。 マイページでは自分が投稿したツイートが確認出来る。

### コメント機能の実装 
#### 目的<br>ツイートに対してコメント出来るようにする
#### 詳細<br>コメントすることでコミュケーションを取る
#### ストーリー<br>ツイートの詳細ページからコメントすることが出来る。 コメントしたらそのツイートに表示される。

### CSSデザインの実装 
#### 目的<br>全体のデザインを決める
#### 詳細<br>機能を視覚的にわかりやすくする
#### ストーリー<br>新規登録、ログイン、投稿ボタン、マイページ、ツイート詳細が区別されており、視覚的に機能が見つけやすくなっている。

## 実装した機能についてのGIFと説明
README作成 実装に必要なDBテーブルを作成します。

インデックス作成(トップページ作成) 投稿したツイートが上から新しい順に表示され<br>ユーザーは投稿一覧表示を確認することが出来ます。

[![Image from Gyazo](https://i.gyazo.com/0466f477b2a370ecf5db6130d02a8e35.jpg)](https://gyazo.com/0466f477b2a370ecf5db6130d02a8e35)

投稿機能の実装 NEWと書かれた投稿ボタンを押すと投稿ページに遷移出来ます。<br>投稿するには画像、タイトル、説明文が必須で記入漏れがある場合エラー文が表示されます。<br>なお投稿ボタンはログインしているユーザーにしか表示されません。

[![Image from Gyazo](https://i.gyazo.com/15683f454e82948e4c398012ddaff1e6.png)](https://gyazo.com/15683f454e82948e4c398012ddaff1e6)
[![Image from Gyazo](https://i.gyazo.com/c4ea536a73e9975215d72965bc536f8e.png)](https://gyazo.com/c4ea536a73e9975215d72965bc536f8e)

詳細機能 トップページに表示されている投稿をクリックするとツイートの詳細を見ることが出来ます。<br>詳細ページには削除機能がついていて現在ログインしているユーザーの投稿なら削除することが出来ます。

[![Image from Gyazo](https://i.gyazo.com/8d793faa1df4864deddd09041441e406.jpg)](https://gyazo.com/8d793faa1df4864deddd09041441e406)
[![Image from Gyazo](https://i.gyazo.com/6438d00ebb64ab16f4810be25dead151.gif)](https://gyazo.com/6438d00ebb64ab16f4810be25dead151)

ユーザー管理機能 新規登録では名前、メールアドレス、パスワードが必須でログインではメールアドレスとパスワードが必須です。ログインすると現在ログインしているユーザーの名前が表示され、クリックするとマイページに遷移することが出来ます。

[![Image from Gyazo](https://i.gyazo.com/883c6db86c5b87c62a3a390e4f2f3fe1.png)](https://gyazo.com/883c6db86c5b87c62a3a390e4f2f3fe1)
[![Image from Gyazo](https://i.gyazo.com/55d50a85f14104d295a5061a55646684.png)](https://gyazo.com/55d50a85f14104d295a5061a55646684)

## 実装予定の機能
フォロー、フォロワー機能

## データベース設計
test.dioを参照

## ローカルでの動作確認
cd ~/projects<br>
git clone https://github.com/satotech-prog/platt.git<br>
cd platt<br>
bundle install<br>
yarn install<br>
rails db:create<br>
rails db:migrate<br>

#### users テーブル

 Column              | Type    | Options     |
| --------           | ------  | ----------- |
| name               | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |

- has_many :tweets
- has_many :comments

#### tweets テーブル

| Column        | Type       | Options     |
| --------      | ------     | ----------- |
| title         | string     | null: false |
| exposition    | text       | null: false |
| user          | references | null: false, foreign_key: true |

- has_many :comments
- belongs_to :user


#### comments テーブル

 Column              | Type    | Options     |
| --------           | ------  | ----------- |
| comment            | string  | null: false |
| user               | references | null: false, foreign_key: true |
| tweet              | references | null: false, foreign_key: true |

- belongs_to :user
- belongs_to:tweet


