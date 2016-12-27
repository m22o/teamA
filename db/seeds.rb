# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create(:start_time => "01:00",:end_time => "24:00",:name => "飲み屋山本24",:location => "一箕町2丁目三番地",:url => "http://hoghoge.ac.jp")

Restaurant.create(:start_time => "15:00",:end_time => "16:00",:name => "A飲4",:location => "一箕町2丁目三番地",:url => "http://hoghoge.ac.jp")

Restaurant.create(:start_time => "22:00",:end_time => "23:59",:name => "飲777",:location => "一箕町2丁目三番地",:url => "http://hoghoge.ac.jp")
