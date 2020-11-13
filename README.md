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
- belong_to :user


comments テーブル

 Column              | Type    | Options     |
| --------           | ------  | ----------- |
| comment            | string  | null: false |
| tweet              | references | null: false, foreign_key: true |

- belong_to :user
- belong_to:tweet


