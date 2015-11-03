class CreateJoinTableArticleRegion < ActiveRecord::Migration
	def change
        create_join_table :articles, :regions do |t|
            t.index :article_id
            t.index :region_id
        end
	end
end
