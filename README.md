アプリ名 
Platt

アプリの概要 
ユーザー登録を行うことでツイートすることが出来るようになり、意見を共有することが出来ます。
またその意見に対してコメントすることが出来、コミュニケーションが可能です。
ログインしていないユーザーはタイムラインでツイートを見ることが出来ますが
ツイートの詳細をみたい場合はログインページにリダイレクトされます。
自身が投稿したツイートはマイページから確認することが削除することが出来ます。

URL

テスト用アカウント
メールアドレス
ww@ww.com
パスワード
111111

アプリ利用方法
新規登録をしてログインします。右下にNEWと書かれた投稿ボタンを押して自身の感想を投稿します。
他ユーザーが投稿した内容にコメントをつけてコミュニティを作ります。

目指した課題解決
同じ目的を持つユーザー同士のコミュニティがなかったので
これを解決したかった

洗い出した要件
README作成 目的  どのような機能をを作成するか決める 詳細  DBにh保存するテーブル作成  ER図の作成 ストーリー  usersテーブル、tweetsテーブル、commentsテーブルを作成しそれぞれに入るカラム名を記入。 ER図を使用してテーブルのアソシエーションを可視化する。

インデックス作成（トップページ作成) 目的  ツイート内容が一覧できるようにする 詳細  ツイート内容が降順に表示されるログインしていなくても見れる ストーリー  固定ヘッダーをつけ、投稿内容が中央に表示される。 一覧には画像とタイトルが表示される。 投稿内容をクリックすると詳細ページに行く。

投稿機能の実装 目的  ツイートを投稿できるようにする 詳細  投稿ページで各項目を記入して投稿する ストーリー  投稿ボタンを押すと投稿ページに遷移して画像、タイトル、説明文(感想)を記入して投稿する。 記入漏れがあればエラーメッセージが表示される。

詳細機能の実装 目的  ツイートの詳細を表示できるようにする 詳細  投稿したツイートの詳細が確認できる ストーリー  投稿したツイート内容（画像、タイトル、説明文(感想)が見れる。 自分が投稿したツイートには削除機能がついている。 また、コメントすることでコミュニケーションを取ることが可能。

ユーザー管理機能 目的  新規登録、ログイン機能を実装する 詳細  ユーザーとしてログインすることで投稿できるようになる ストーリー  新規登録では名前、メールアドレス、パスワードが必要。 ログインではメールアドレスとパスワードが必要。 ログイン後、ログインしているユーザーの名前が出るのでクリックするとマイページに遷移することができる。 マイページでは自分が投稿したツイートが確認出来る。

コメント機能の実装 目的  ツイートに対してコメント出来るようにする 詳細  コメントすることでコミュケーションを取る ストーリー  ツイートの詳細ページからコメントすることが出来る。 コメントしたらそのツイートに表示される。

CSSデザインの実装 目的  全体のデザインを決める 詳細  機能を視覚的にわかりやすくする ストーリー  新規登録、ログイン、投稿ボタン、マイページ、ツイート詳細が区別されており、視覚的に機能が見つけやすくなっている。

実装した機能についてのGIFと説明
README作成 実装に必要なDBテーブルを作成します。

インデックス作成(トップページ作成) 投稿したツイートが上から新しい順に表示され、ユーザーは投稿一覧表示を確認することが出来ます。

投稿機能の実装 NEWと書かれた投稿ボタンを押すと投稿ページに遷移出来ます。投稿するには画像、タイトル、説明文が必須で記入漏れがある場合エラー文が表示されます。なお投稿ボタンはログインしているユーザーにしか表示されません。

詳細機能 トップページに表示されている投稿をクリックするとツイートの詳細を見ることが出来ます。詳細ページには削除機能がついていて現在ログインしているユーザーの投稿なら削除することが出来ます。

ユーザー管理機能 新規登録では名前、メールアドレス、パスワードが必須でログインではメールアドレスとパスワードが必須です。ログインすると現在ログインしているユーザーの名前が表示され、クリックするとマイページに遷移することが出来ます。

実装予定の機能
コメント機能の実装、CSSデザインの機能

データベース設計
test.dioを参照

ローカルでの動作確認
git clone https://github.com/satotech-prog/platt.git






users テーブル

 Column              | Type    | Options     |
| --------           | ------  | ----------- |
| name               | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |

- has_many :tweets
- has_many :comments

tweets テーブル

| Column        | Type       | Options     |
| --------      | ------     | ----------- |
| title         | string     | null: false |
| exposition    | text       | null: false |
| user          | references | null: false, foreign_key: true |

- has_many :comments
- belongs_to :user


comments テーブル

 Column              | Type    | Options     |
| --------           | ------  | ----------- |
| comment            | string  | null: false |
| user               | references | null: false, foreign_key: true |
| tweet              | references | null: false, foreign_key: true |

- belongs_to :user
- belongs_to:tweet


