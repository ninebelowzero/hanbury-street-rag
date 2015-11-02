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
															image_path: "http://lorempixel.com/600/500",
															thumbnail_path: "http://lorempixel.com/100/100"

	})
	p article.inspect
end

10.times do
	ad = Ad.create ({ image_path: "http://placehold.it/310x500"

	})
	p ad.inspect
end