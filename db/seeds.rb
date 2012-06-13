# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
['','Ashokkumar Ramdoss',	'Gowri R Jayalakshmi', 'Karthik Sirasanagandla', 'Senthil V S', 'Karthikeyan M', 'Abhinaya Sukumar', 'Kalaiarasi Srinivasaramanan', 'Ram Kumar M K', 'Bijesh Vijayan', 'Praveena Fernandes',	'Saravanan P S', 'Livingston Samuel',	'Boojapathy Chidambaram', 'Mubashar Nadeem Sibgathullah', 'Deepthi R'].sort.each do |name|
  Candidate.create(name: name )
end

