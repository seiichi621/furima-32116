# テーブル設計

## users テーブル

| Column        　　　　　　      | Type     | Options     |
| --------      　　　　　　      | ------   | ----------- |
| email         　　　　　　      | string   | null: false |
| encrypted_password            | string   | null: false |
| nickname      　　　　　　      | string   | null: false |
| first_name          　　　　　　| string   | null: false |
| last_name　　　　　　　　　　　　 | string   | null: false |
| first_name_kana               | string   | null: false |
| last_name_kana                | string   | null: false |
| gender                        | string   | 　　　　　　  |
| birthday 　　　　　　           | date     | null: false |

### Association
-has_many :items
-has_many :orders

## items テーブル

| Column             | Type       | Options     |
| ------             | ------     | ----------- |
| name               | string     | null:false  |
| describe           | text       | null:false  |
| category           | integer    | null:false  |
| condition          | integer    | null:false  |
| delivery_fee       | integer    | null:false  |
| prefecture         | integer    | null:false  |
| datetime           | integer    | null:false  |
| price              | integer    | null:false  |
| user               | references  | null:false, foreign_key: true |

### Association
-has_one :order
-belongs_to :user
  

## orders テーブル

| Column         | Type       | Options                        |
| ------         | ---------- | ------------------------------ |
| user           | references  | null:false, foreign_key: true  |
| item           | references  | null:false, foreign_key: true  |

### Association
-belongs_to :user
-belongs_to :item
-has_one :address


## address テーブル

| Column             | Type       | Options                        |
| ------             | ---------- | ------------------------------ |
| postcode           | string     | null: false |
| prefecture_id      | integer    | null: false |
| state              | string     | null: false |
| street_number      | string     | null: false |
| building_name      | string     |             |
| phone_number       | stirng     | null:false  |
| order              | references  | null:false, foreign_key: true |

### Association
-belongs_to :order
