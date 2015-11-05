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
															standfirst: Lorem.sentence(8, true, 8),
															caption: Lorem.sentence(12, true, 12),
															author: Name.name,
															content: Lorem.paragraphs(8, true).join("\n"),
												
	})
	p article.inspect
end

10.times do
	ad = Ad.create ({ image_path: "http://placehold.it/310x500"

	})
	# p ad.inspect
end


topic = Topic.create ({ name: "Politics" })
topic = Topic.create ({ name: "Culture" })
topic = Topic.create ({ name: "Opinion" })
topic = Topic.create ({ name: "Science" })
topic = Topic.create ({ name: "Business" })
topic = Topic.create ({ name: "Sport" })

region = Region.create ({ name: "UK" })
region = Region.create ({ name: "Europe" })
region = Region.create ({ name: "Americas" })
region = Region.create ({ name: "Africa & Middle East" })
region = Region.create ({ name: "Asia-Pacific" })







