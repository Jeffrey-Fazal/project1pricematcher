# Class Diagram

```mermaid
classDiagram
    direction LR
    products --|> categories :belongs_to
    products <|--|> stores :has_many
    users <|--|> products :has_many 
    users <|--|> categories :has_many 
    users <|--|> stores :has_many 

    products .. product_stores :join table
    stores .. product_stores :join table

    users .. users_products :join table
    users_products .. products :join table

    users .. categories_users :join table
    categories_users .. categories :join table

    users .. stores_users :join table
    stores_users .. stores :join table

    class products {
      t.integer :pdt_id
      t.text :name  
      t.text :title 
      t.text :rrp
      t.text :series
      t.text :brand 
      t.integer :cat_id
      t.text :price_cheaptest
      t.text :sku
      t.text :photo
      t.text :image_url
      t.text :rating
      t.text :description
      t.text :store_name_price
    }
    class categories {
      t.integer :cat_id
      t.text :name
      t.text :desciption
      t.text :image
    }
    class stores {
      t.text :store_slug
      t.text :name
      t.text :logo
      t.integer :phone
      t.text :store_location
      t.boolean :sponsor
    }
    class users {
      t.integer :usr_id
      t.text :email
      t.integer :pdt_id
      t.integer :cat_id
      t.text :role_identifier
      t.string :password_digest
    }
    class users_products {
      t.integer :pdt_id
      t.text :usr_id
    }
    class categories_users {
      t. integer :cat_id
      t. integer :usr_id
    }
    class stores_users{
      t.integer :usr_id
      t.integer :store_id
    }
    class product_stores{
      t.integer :store_id
      t.integer :pdt_id
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