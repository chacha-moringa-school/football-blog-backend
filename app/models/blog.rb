class Blog < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
    has_many :comments

    validates :title, presence: true
    validates :news, length: {minimum: 100, message: "A valid blog should have at least 100 characters"}
end
