# Class Diagram

```mermaid
classDiagram
    products --|> categories
    products <|--|> stores
    users <|--|> products :has_many products
    users <|--|> product_categories :has_many categories
    users <|--|> stores 

    class products {
      t.integer :product_id  
      t.text :title 
      t.text :rrp
      t.text :series
      t.text :brand 
      t.text :category_id
      t.text :price_cheaptest
      t.text :sku
      t.text :photo
      t.text :image_url
      t.text :rating
      t.text :description
      t.text :store_name_price

    }
    class categories {
      t.integer :category_id
      t.text :name
      t.text :desciption
      t.text :image

    }
    class stores {
      t.integer :store_slug
      t.text :name
      t.text :logo
      t.integer :phone
      t.text :store_location
      t.boolean :sponsor
    }
    class users {
      t.text :user_id
      t.text :email
      t.text :product_id
      t.text :category_id
      t.text :role
      t.datetime created_at, null: false
      t.datetime updated_at, null: false
      t.string :password_digest
      t.boolean :role
    }
```
## products
* store_name_price
    * Includes a hash of he store and its price 
* series 
    * Addiional info about a product such as its line, model or alternative sub-brand

## stores
* 

# Migration Files
*


# Models & Views

```rb
# app > model products.rb
    belongs_to :categories
```

```rb
# app > model product_categories.rb
    has_many :products
```

```rb
# app > model stores .rb
```

```rb
# app > model users.rb
    has_many :products
    has_many :product_categories
    has_secure_password
    validates :email, :uniqueness => true, :presence => true
```

# Basic AR Associations

- belongs_to
- has_many 
- has_and_belongs_to_many

## Examples of associations

```rb
reference assosciations

class Song < ApplicationRecord
    has_and_belongs_to_many :mixtapes
    has_and_belongs_to_many :genres
    belongs_to :artist, :optional => true
    belongs_to :album, :optional => true
end
class User < ApplicationRecord
    has_many :mixtapes
    has_secure_password
    validates :email, :uniqueness => true, :presence => true
end
class Mixtape < ApplicationRecord
    belongs_to :user, :optional => true
    has_and_belongs_to_many :songs
end
class Genre < ApplicationRecord
    has_and_belongs_to_many :songs
end
class Artist < ApplicationRecord
    has_many :songs
    has_many :genres, :through => :songs
end
class Album < ApplicationRecord
    has_many :songs
end
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
```

# Finding data

```
Key
* That I have: S
* That I can obtain (via api/scraping etc): A
* That I want: P
* Thats genereated: G
* May be needed: O
* mant: Mandatory
* opt: Optional
```