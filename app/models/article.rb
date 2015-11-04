class Article < ActiveRecord::Base
  has_and_belongs_to_many :topics
  has_and_belongs_to_many :regions
  has_one :page_position

  mount_uploader :image, ImageUploader

  acts_as_commentable
end
