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
| gender                        | string   | null: false |
| date 　　　　　　               | string   | null: false |

### Association
-has_many :item_users
-has_many :items, through: item_users
-has_many :orders

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

### Association
-has_many :order_items
-has_many :orders, through :order_items
-belongs_to :user
  

## orders テーブル

| Column         | Type       | Options                        |
| ------         | ---------- | ------------------------------ |
| user           | reference  | null:false, foreign_key: true  |
| item           | reference  | null:false, foreign_key: true  |

### Association
-belongs_to :user
-belongs_to :item
-has_many :address


## address テーブル

| Column             | Type       | Options                        |
| ------             | ---------- | ------------------------------ |
| postcode           | string     | null: false |
| prefectures_id     | integer    | null: false |
| state              | string     | null: false |
| street_number      | string     | null: false |
| building_name      | string     |             |
| phone_number       | stirng     | null:false  |
| order              | reference  | null:false, foreign_key: true |

### Association
-belongs_to :order
