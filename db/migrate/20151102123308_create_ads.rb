class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.text :image_path

      t.timestamps null: false
    end
  end
end
