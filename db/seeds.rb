# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 2 penguin teams with 9 players each

team1 = Team.create(name: "#{FFaker::Address.city} #{FFaker::Color.name}#{FFaker::AnimalUS.common_name.pluralize}")
team2 = Team.create(name: "#{FFaker::Address.city} #{FFaker::AnimalUS.common_name.pluralize}")


9.times do | i |
	if [0,1].sample
		Penguin.create(name: FFaker::Name.name_with_suffix, team: team1)
	else
		Penguin.create(name: FFaker::Name.name, team: team1)
	end

end

9.times do | i |
	if [0,1].sample
		Penguin.create(name: FFaker::Name.name_with_suffix, team: team2)
	else
		Penguin.create(name: FFaker::Name.name, team: team2)
	end
end
