# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create(:start => "01:00",:end => "24:00",:name => "天竜",:location => "会津若松市",:url => "http://hoghoge.ac.jp")

Restaurant.create(:start => "15:00",:end => "16:00",:name => "盃爛処",:location => "会津若松市",:url => "http://hoghoge.ac.jp")

Restaurant.create(:start => "22:00",:end => "23:59",:name => "白木屋",:location => "会津若松市",:url => "http://hoghoge.ac.jp")
