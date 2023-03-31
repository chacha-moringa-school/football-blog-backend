class ChangeNewsFromStringToText < ActiveRecord::Migration[7.0]
  def change
    change_column :blogs, :news, :text
  end
end
