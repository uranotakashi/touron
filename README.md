## usersテーブル

| Column   | Type   | Options                   |
| -------- | ------ | ----------- --------------|
| username | string | null: false, unique: true |
| nickname | string | null: false, unique: true |
| email    | string | null: false, unique: true |
| password | string | null: false, unique: true |

### Association
- has_many :texts
- has_many :chats, through: :participants
- has_many :participants
- has_many :books

## chatsテーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| topic  | string | null: false |

### Association
- has_many :texts
- has_many :users, through: :participants
- has_many :participants

## textsテーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| sentence | text       | null: false                    |
| user_id  | references | null: false, foreign_key: true |
| chat_id  | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :chat

## participantsテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user_id | references | null: false, foreign_key: true |
| chat_id | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :chat


## booksテーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| title   | string     | null: false                    |
| author  | string     | null: false                    |
| review  | text       | null: false                    |
| user_id | references | null: false, foreign_key: true |

### Association
- belongs_to :user


