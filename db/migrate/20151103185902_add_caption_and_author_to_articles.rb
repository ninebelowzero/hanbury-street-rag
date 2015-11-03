class AddCaptionAndAuthorToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :caption, :string
    add_column :articles, :author, :string
  end
end
