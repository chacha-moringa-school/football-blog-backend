class BlogSerializer < ActiveModel::Serializer
  attributes :id, :title, :news, :image_url, :updated_at_formatted, :total_likes, :user_id
  belongs_to :user

  def total_likes
    blog_likes = object.likes
    blog_likes.length()
  end

  def updated_at_formatted
    object.updated_at.strftime("%d-%m-%Y at %H:%M")
  end
end
