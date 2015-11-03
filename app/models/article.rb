class Article < ActiveRecord::Base
  has_and_belongs_to_many :topics
  has_and_belongs_to_many :regions
end
