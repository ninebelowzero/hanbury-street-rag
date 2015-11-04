class AddLinkPathToAds < ActiveRecord::Migration
  def change
    add_column :ads, :link_path, :text
  end
end
