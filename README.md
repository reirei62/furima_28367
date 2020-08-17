# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

#テーブル設計
 
## users テーブル

| Column    | Type | Options   |
|-----------|------|-----------|
| nickname      |string|null: false|
| email     |string|null: false|
| password  |string|null: false|
| last_name |string|null: false|
| first_name|string|null: false|
| birth     |Date  |null: false|

###Association
- has_many :sells
- has_many :purchases



## sells テーブル

| Column     | Type  |  Options   |
|------------|-------|------------|
| user_id    |references|null: false, foreign_key: true |
| name       |string | null: false|
| price      |integer| null: false|
| content    |string | null: false|
| category   |string | null: false|
|product_state|string| null: false|
|delivery_fee|boolean| null: false|
|shipper_area|string | null: false|
| ship_days  |string | null: false|

###Association
- belongs_to :user
- has_one :purchase



## purchases テーブル

| Column    |Type     |  Options   |
|-----------|---------|------------|
| user_id   |references|null: false,foreign_key: true|
| sell_id   |references|null: false,foreign_key: true|
| card_number|integer |null: false|
| month     | byte    |null: false|
| year      | byte    |null: false|
| CVC       | integer |null: false|
|post_number| integer |null: false|
|prefecture | string  |null: false|
|cities     | string  |null: false|
|house_number|string  |null: false|
|building   |string   |null: false|

###Association
- belongs_to :user
- belongs_to :sell
