# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Make Leader
%w(Juno Howard Warren Hubert).each do |name|
	Leader.create name: name, major: "CS", SID: rand(4000..5000), email:name+"@email.com", password:'password'
end

#Make Student
%w(EmilyP Caroline EmilyT Alex).each do |name|
	Student.create name: name, year: rand(1..4), major: "CS", SID: rand(2000..3000), email:name+"@email.com", password:'password'
end

#Make Organization part 1
%w(Danceworx AFX).each do |name|
	Organization.create name: name, description: "A major dance club on campus.", email:name+"@email.com", password:'password'
end

#Make Organization part 2
%w(CSM HKN).each do |name|
	Organization.create name: name, description: "A STEM club on campus that provides STEM community/assistance to students.", email:name+"@email.com", password:'password'
end

#Make Event
%w(Showcase Presentation Hackathon).each do |name|
	Event.create title: name, starttime: DateTime.current(), description: "Event hosted by a club on campius", longitude: rand(20..30), latitude: rand(40..50), organization: rand(Organization.all)
end
