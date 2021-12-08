# README

# テーブル設計

## usersテーブル

| Column             | Type   | Options                   |
|--------------------|--------|---------------------------|
| code               | string | null: false, unique:true  |
| name               | string | null: false               |
| stage_name         | string | null: false               |
| encrypted_password | string | null: false               |

### Association

- has_one  :method
- has_many :staffs
- has_one  :actor

## methodsテーブル

| Column   | Type       | Options                        |
|----------|------------|--------------------------------|
| 1st      | boolean    | null: false                    |
| 2nd      | boolean    | null: false                    |
| 3rd      | boolean    | null: false                    |
| 4th      | boolean    | null: false                    |
| 5th      | boolean    | null: false                    |
| 6th      | boolean    | null: false                    |
| 7th      | boolean    | null: false                    |
| 8th      | boolean    | null: false                    |
| 9th      | boolean    | null: false                    |
| 10th     | boolean    | null: false                    |
| 11th     | boolean    | null: false                    |
| 12th     | boolean    | null: false                    |
| 13th     | boolean    | null: false                    |
| 14th     | boolean    | null: false                    |
| 15th     | boolean    | null: false                    |
| 16th     | boolean    | null: false                    |
| 17th     | boolean    | null: false                    |
| 18th     | boolean    | null: false                    |
| 19th     | boolean    | null: false                    |
| 20th     | boolean    | null: false                    |
| 21th     | boolean    | null: false                    |
| 22th     | boolean    | null: false                    |
| 23th     | boolean    | null: false                    |
| 24th     | boolean    | null: false                    |
| 25th     | boolean    | null: false                    |
| user     | references | null: false, foreign_key: true |

### Association

- belong_to :user

## staffsテーブル

| Column | Type       | Options                        |
|--------|------------|--------------------------------|
| genre  | string     | null: false                    |
| show   | string     | null: false                    |
| stage  | string     | null: false                    |
| user   | references | null: false, foreign_key: true |

### Association

- belong_to :user

## actorsテーブル

| Column  | Type       | Options                        |
|---------|------------|--------------------------------|
| time    | float      | null: false                    |
| comment | text       | null: false                    |
| user    | references | null: false, foreign_key: true |

### Association

- belong_to :user
- has_many  :past_acts
- has_many  :past_directs
- has_one   :next_program

## past_actsテーブル

| Column   | Type       | Options                        |
|----------|------------|--------------------------------|
| show     | string     | null: false                    |
| stage    | string     | null: false                    |
| average  | float      | null: false                    |
| high     | float      | null: false                    |
| actor    | references | null: false, foreign_key: true |

### Association

- belong_to :actor

## past_directsテーブル

| Column   | Type       | Options                        |
|----------|------------|--------------------------------|
| show     | string     | null: false                    |
| stage    | string     | null: false                    |
| average  | float      | null: false                    |
| high     | float      | null: false                    |
| actor    | references | null: false, foreign_key: true |

### Association

- belong_to :actor

## next_programsテーブル

| Column   | Type       | Options                        |
|----------|------------|--------------------------------|
| schedule | date       | null: false                    |
| show     | string     | null: false                    |
| stage    | string     | null: false                    |
| author   | string     | null: false                    |
| actor    | references | null: false, foreign_key: true |

### Association

- belong_to :actor