class CreateJoinTableArticleTopic < ActiveRecord::Migration
	def change
		create_join_table :articles, :topics do |t|
			t.index :article_id
			t.index :topic_id
		end
	end
end
