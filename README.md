# テーブル設計

## users テーブル

| Column             | Type   | Options     |
|--------------------| ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :room_users
- has_many :rooms, through: :room_user
- has_many :messages

## rooms テーブル

| Column | Type   | Options     |
|--------| ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :room_users
- has_many :users, through: :room_users
- has_many :messages

## room_users テーブル

| Column | Type       | Options                        |
|--------| ---------- | ------------------------------ |
| user   | refarences | null: false, foreign_key: true |
| room   | refarences | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## messages テーブル

| Column  | Type       | Options                        |
|---------| ---------- | ------------------------------ |
| content | string     |                                |
| user    | refarences | null: false, foreign_key: true |
| room    | refarences | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user