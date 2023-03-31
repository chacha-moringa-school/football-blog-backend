class Like < ApplicationRecord
    belongs_to :user
    belongs_to :blog

    validates_uniqueness_of :user_id, scope: :blog_id, message: "You can only like this blog once"

end
