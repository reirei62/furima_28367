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

| Column        | Type | Options   |
|---------------|------|-----------|
| nickname      |string|null: false|
| email         |string|null: false|
| password      |string|null: false|
| last_name     |string|null: false|
| first_name    |string|null: false|
| kana_last_name|string|null: false|
|kana_first_name|string|null: false|
| birth         |Date  |null: false|

###Association
- has_many :item_users
- has_many :items,through :item_users
- has_many :purchases

## items テーブル

| Column     | Type   |  Options   |
|------------|--------|------------|
| user       |references|null: false, foreign_key: true |
| name       |string  | null: false|
| price      |integer | null: false|
| content    |text    | null: false|
| category   |integer | null: false|
|product_state|integer| null: false|
|delivery_fee|integer | null: false|
|shipper_area|integer | null: false|
| ship_days  |integer | null: false|

###Association
- has_many :item_users
- has_many :users,through :item_users
- has_one :purchase


## purchases テーブル

| Column    |Type     |  Options   |
|-----------|---------|------------|
| user      |references|null: false,foreign_key: true|
| item      |references|null: false,foreign_key: true|
|post_number| string  |null: false|
|prefecture | string  |null: false|
|cities     | string  |null: false|
|house_number|string  |null: false|
|building   |string   |           |
|telephone_number|string|null: false|

###Association
- belongs_to :user
- belongs_to :item


## item_users テーブル

| Column  |  Type   |  Options   |
|---------|---------|------------|
| user    |references|null: false,foreign_key: true|
| item    |references|null: false,foreign_key: true|

###Association
- belongs_to :item
- belongs_to :user
