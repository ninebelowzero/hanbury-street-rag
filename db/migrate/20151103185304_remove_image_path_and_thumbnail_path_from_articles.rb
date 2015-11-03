class RemoveImagePathAndThumbnailPathFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :image_path
    remove_column :articles, :thumbnail_path
  end
end
