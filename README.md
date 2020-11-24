# テーブル設計

## users テーブル

| Column        　　　　　　      | Type     | Options     |
| --------      　　　　　　      | ------   | ----------- |
| email         　　　　　　      | string   | null: false |
| encrypted_password            | string   | null: false |
| nickname      　　　　　　      | string   | null: false |
| first_name          　　　　　　| string   | null: false |
| last_name　　　　　　　　　　　　 | string   | null: false |
| birthday 　　　　　　           | string   | null: false |

## items テーブル

| Column             | Type       | Options     |
| ------             | ------     | ----------- |
| name               | string     | null:false  |
| explain            | text       | null:false  |
| category_id        | integer    | null:false  |
| condition_id       | integer    | null:false  |
| delivery_fee_id    | integer    | null:false  |
| prefectures_id     | integer    | null:false  |
| datetime_id        | integer    | null:false  |
| price              | integer    | null:false  |
| user               | reference  | null:false, foreign_key: true |
  

## orders テーブル

| Column         | Type       | Options                        |
| ------         | ---------- | ------------------------------ |
| user           | reference  | null:false, foreign_key: true  |
| item           | reference  | null:false, foreign_key: true  |

## address テーブル

| Column             | Type       | Options                        |
| ------             | ---------- | ------------------------------ |
| postcode           | string     | null: false |
| prefectures_id     | integer    | null: false |
| state              | string     | null: false |
| street number      | integer    | null: false |
| building name      | string     |             |
| phone number       | stirng     | null:false  |
| order              | reference  | null:false, foreign_key: true |

