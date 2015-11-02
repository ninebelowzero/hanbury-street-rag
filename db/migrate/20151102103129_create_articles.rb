class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :headline
      t.string :standfirst
      t.text :content
      t.text :image_path
      t.text :thumbnail_path

      t.timestamps null: false
    end
  end
end
