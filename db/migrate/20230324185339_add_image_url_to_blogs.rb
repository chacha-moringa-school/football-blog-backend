class AddImageUrlToBlogs < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :image_url, :string
  end
end
