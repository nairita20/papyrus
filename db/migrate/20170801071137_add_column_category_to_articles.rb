class AddColumnCategoryToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :category, :string
  end
end
