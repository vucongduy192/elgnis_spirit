User.create(name: "admin test", email: "admin@gmail.com", password: "admin@123",role: "admin")

User.create(name:"user test", email: "user@gmail.com", password: "user@123",role: "member")

3.times do |n|
    User.create!([
	    {
    		email: "user#{n+1}@gmail.com",
    		name: Faker::Name.unique.name,
    		password: "user@123",
    		role: "member"
    	}
    ])
end

Image.create!([
    {user_id: 2, title:"まだまだ載せたい写真が沢山☺️#ポートレートモデル",
     link:"https://instagram.fhan2-3.fna.fbcdn.net/vp/e3b3969c10290f94ce048b13da170df9/5CA2A4E3/t51.2885-15/e35/44444096_421184115085711_175144983089626499_n.jpg?_nc_ht=instagram.fhan2-3.fna.fbcdn.net",
     created_at:"2018-07-18T13:54:16.000Z",
    },
    {user_id: 3, title:". なんか色々さっぱりしたい… . . #三つ編み #ポートレート",
     link:"https://scontent-sea1-1.cdninstagram.com/vp/4433a14561e5d97c273d3b79dfa0d67a/5BE35A96/t51.2885-15/e35/36892158_213582542694466_8354807878690799616_n.jpg",
     created_at:"2018-07-18T13:53:44.000Z",
    },
    {user_id: 4, title:"寺×ヨガ」 #photo  #photos  #photographer",
     link:"https://scontent-sea1-1.cdninstagram.com/vp/96609d28ac4602afc2efacf35277cafb/5BE5F7D2/t51.2885-15/e35/36728411_280581086031211_8905816607553486848_n.jpg",
     created_at:"2018-07-18T13:52:28.000Z",
    },
    {user_id: 5, title:"服ビッチョビチョ",
     link:"https://scontent-sea1-1.cdninstagram.com/vp/e71130fd674afbab5c2e216d1bc4c2e9/5BCC20BE/t51.2885-15/e35/37407743_1735577889830448_2908430219377377280_n.jpg",
     created_at:"2018-07-18T13:51:49.000Z",
    },
    {user_id: 4, title:"寺×ヨガ」 #photo  #photos  #photographer",
     link:"https://scontent-sea1-1.cdninstagram.com/vp/56e2cee77af4f58d14addd8caf06ffa2/5BDCA382/t51.2885-15/e35/37323442_637307843300567_6125220373140078592_n.jpg",
     created_at:"2018-07-18T13:51:49.000Z",
    }
  ])
