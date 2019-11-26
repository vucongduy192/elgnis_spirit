User.create(name: "admin test", email: "admin@gmail.com", password: "admin@123", role: "admin", avatar: "https://png.pngtree.com/png-clipart/20190611/original/pngtree-beautiful-flower-png-image_3233188.jpg")

User.create(name:"user test", email: "user@gmail.com", password: "user@123", role: "member", avatar: "https://png.pngtree.com/png-clipart/20190611/original/pngtree-beautiful-flower-png-image_3233188.jpg")

3.times do |n|
    User.create!([
	    {
    		email: "user#{n+1}@gmail.com",
    		name: Faker::Name.unique.name,
    		password: "user@123",
    		role: "member",
            avatar: "https://png.pngtree.com/png-clipart/20190611/original/pngtree-beautiful-flower-png-image_3233188.jpg"
    	}
    ])
end

Image.create!([
    {user_id: 2, title:"まだまだ載せたい写真が沢山☺️#ポートレートモデル",
     link:"http://thuthuatphanmem.vn/uploads/2018/09/11/hinh-anh-dep-1_044126531.jpg",
     created_at:"2018-07-18T13:54:16.000Z",
    },
    {user_id: 3, title:". なんか色々さっぱりしたい… . . #三つ編み #ポートレート",
     link:"http://thuthuatphanmem.vn/uploads/2018/09/11/hinh-anh-dep-2_044126655.jpg",
     created_at:"2018-07-18T13:53:44.000Z",
    },
    {user_id: 4, title:"寺×ヨガ」 #photo  #photos  #photographer",
     link:"http://thuthuatphanmem.vn/uploads/2018/09/11/hinh-anh-dep-6_044127357.jpg",
     created_at:"2018-07-18T13:52:28.000Z",
    },
    {user_id: 5, title:"服ビッチョビチョ",
     link:"http://thuthuatphanmem.vn/uploads/2018/09/11/hinh-anh-dep-10_044127763.jpg",
     created_at:"2018-07-18T13:51:49.000Z",
    },
    {user_id: 4, title:"寺×ヨガ」 #photo  #photos  #photographer",
     link:"https://scontent-sea1-1.cdninstagram.com/vp/56e2cee77af4f58d14addd8caf06ffa2/5BDCA382/t51.2885-15/e35/37323442_637307843300567_6125220373140078592_n.jpg",
     created_at:"2018-07-18T13:51:49.000Z",
    }
  ])
