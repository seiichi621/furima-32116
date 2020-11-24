# テーブル設計

## users テーブル

| Column        | Type     | Options     |
| --------      | ------   | ----------- |
| email         | string   | null: false |
| password      | string   | null: false |
| nickname      | string   | null: false |
| name          | string   | null: false |
| date of birth | string   | null: false |

## items テーブル

| Column          | Type       | Options     |
| ------          | ------     | ----------- |
| image           | image      | null: false |
| name            | text       | null: false |
| explain         | text       | null: false |
| category        | string     | null:false  |
| condition       | string     | null:false  |
| delivery fee    | string     | null:false  |
| shipping        | string     | null:false  |
| datetime        |datetime    | null:false  |
| price           | integer    | null:false  |
| compounding fee | integer    | null:false  |
| profit          | integer    | null:false  | 
| user            | reference  | null:false, foreign_key: true |
| order           | reference  | null:false, foreign_key: true |

## orders テーブル

| Column         | Type       | Options                        |
| ------         | ---------- | ------------------------------ |
| image          | image      | null: false |
| name           | string     | null: false |
| price          | integer    | null: false |
| card           | integer    | null: false |
| deadline       | integer    | null:false  |
| security codes | integer    | null:false  |
| user           | reference  | null:false, foreign_key: true |

## address テーブル

| Column             | Type       | Options                        |
| ------             | ---------- | ------------------------------ |
| postcode           | integer    | null: false |
| prefectures        | string     | null: false |
| state              | string     | null: false |
| street number      | integer    | null: false |
| building name      | string     | null:false  |
| phone number       | integer    | null:false  |
| order              | reference  | null:false, foreign_key: true |

