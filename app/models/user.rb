class User < ApplicationRecord
    has_secure_password
    has_many :categories
    has_many :stores
    has_many :products
    validates :email, :uniqueness => true, :presence => true
end
