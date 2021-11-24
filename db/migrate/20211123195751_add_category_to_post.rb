class AddCategoryToPost < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :posts, :category, foreign_key: true
  end
end
