class CreatePagePositions < ActiveRecord::Migration
  def change
    create_table :page_positions do |t|
      t.integer :article_id

      t.timestamps null: false
    end
  end
end
