class User < ApplicationRecord
    has_many :blogs
    has_many :likes
    has_many :comments
    has_secure_password

    validates :email, uniqueness: true, presence: true
    validates :username, uniqueness: true, presence: true
end
