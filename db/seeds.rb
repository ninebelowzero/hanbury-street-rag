# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require "faker"

include Faker

20.times do
	article = Article.create ({ headline: Lorem.words(7, true).join(" ").capitalize,
															standfirst: Lorem.sentence(10, true, 10),
															content: Lorem.paragraphs(8, true).join("\n"),
															image_path: Avatar.image("placeholder image", "450x315"),
															thumbnail_path: Avatar.image("thumbnail image", "100x100")

		})
	p article.inspect
end