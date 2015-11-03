class CreateTopStories < ActiveRecord::Migration
  def change
    create_table :top_stories do |t|
      t.integer :article_id

      t.timestamps null: false
    end
  end
end
