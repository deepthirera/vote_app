# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
h = {"Abhinaya Sukumar" => "sabhinay@thoughtworks.com","Archana Beny" => "archanab@thoughtworks.com", "Ashokkumar Ramdoss" => "ashokk@thoughtworks.com", "Bijesh Vijayan" => "vijayan@thoughtworks.com", "Booja pathy" => "boojapc@thoughtworks.com",  "Deepthi R" => "deepthir@thoughtworks.com", "Gowri J" => "gowrirj@thoughtworks.com", "Kalai Arasi" => "kalaias@thoughtworks.com", "Karthik Sirasanagandla" => "karthiks@thoughtworks.com", "Karthikeyan M" => "karthikm@thoughtworks.com", 
      "Livingston Samuel" => "lsamuel@thoughtworks.com", "Mubashar Nadeem Sibgathullah" => "mubashns@thoughtworks.com", "Praveena Fernandes" => "praveeg@thoughtworks.com", "Ram Kumar M K" => "ramkumarmk@thoughtworks.com",
      "Saravanan P" => "saravanp@thoughtworks.com", "Satish Kumar Viswanathan" => "sviswan1@thoughtworks.com", "Senthil VS" => "senthilv@thoughtworks.com"}
h.each_pair{|k,v| Candidate.create(:name => k, :mail_id => v)}
