class Article < ActiveRecord::Base
  has_and_belongs_to_many :topics
  has_and_belongs_to_many :regions
  has_one :page_position

  mount_uploader :image, ImageUploader

  acts_as_commentable

  def has_topic?(topic)
    topic_ids.include? topic.id
  end

  def has_region?(region)
    region_ids.include? region.id
  end

end
