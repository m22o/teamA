# This file should contain all the record creation needed to seed the atabase with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
restaurants = Restaurant.create([{ start:"17:00" ,end:"23:00",name:"天竜",location:"会津",url:"" },{ start:"12:00" ,end:"19:00",name:"白木屋",location:"喜多方",url:"" },
  { start:"0:00" ,end:"06:00",name:"鳥の蔵",location:"会津大学内",url:"https://tabelog.com/fukushima/A0702/A070201/7002130/" }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
comments = Comment.create([{restaurant_id:1,user_name:"コアラちゃん",star:4,comment:"スノードロップは神"}])
