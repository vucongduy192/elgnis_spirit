User.create(name: "admin test", email: "admin@gmail.com", password: "admin@123", role: "admin",avatar_link: "http://data.kenhsinhvien.net/hinhanh/2013/01/21/trao-luu-avatar-nghieng-dau-tran-ngap-facebook-700488-1568.jpg")

User.create(name:"user test", email: "user@gmail.com", password: "user@123", role: "member",avatar_link: "http://data.kenhsinhvien.net/hinhanh/2013/01/21/trao-luu-avatar-nghieng-dau-tran-ngap-facebook-700488-1568.jpg")

3.times do |n|
    User.create!([
	    {
    		email: "user#{n+1}@gmail.com",
    		name: Faker::Name.unique.name,
    		password: "user@123",
    		role: "member",
    		avatar_link: "https://2.bp.blogspot.com/-d6NXFXNJ4Fk/WYMk9vIgj8I/AAAAAAAApRw/oOBYL6DF5Ww8UPrmkHgDmmKM2CRuVKmiwCLcBGAs/s1600/3_7_1345792436_77_1345790788-nguoi-yeu-cu-1.jpg"
    	}
    ])
end

Image.create!([
    {user_id: 2, title:"まだまだ載せたい写真が沢山☺️#ポートレートモデル",
     link:"http://thuthuatphanmem.vn/uploads/2018/09/11/hinh-anh-dep-1_044126531.jpg",
     created_at:"2019-07-18T13:54:16.000Z",
    },
    {user_id: 3, title:". なんか色々さっぱりしたい… . . #三つ編み #ポートレート",
     link:"http://thuthuatphanmem.vn/uploads/2018/09/11/hinh-anh-dep-2_044126655.jpg",
     created_at:"2019-07-18T13:53:44.000Z",
    },
    {user_id: 4, title:"寺×ヨガ」 #photo  #photos  #photographer",
     link:"http://thuthuatphanmem.vn/uploads/2018/09/11/hinh-anh-dep-6_044127357.jpg",
     created_at:"2019-07-18T13:52:28.000Z",
    },
    {user_id: 5, title:"服ビッチョビチョ",
     link:"http://thuthuatphanmem.vn/uploads/2018/09/11/hinh-anh-dep-10_044127763.jpg",
     created_at:"2019-07-18T13:51:49.000Z",
    },
    {user_id: 4, title:"寺×ヨガ」 #photo  #photos  #photographer",
     link:"https://2.bp.blogspot.com/-d6NXFXNJ4Fk/WYMk9vIgj8I/AAAAAAAApRw/oOBYL6DF5Ww8UPrmkHgDmmKM2CRuVKmiwCLcBGAs/s1600/3_7_1345792436_77_1345790788-nguoi-yeu-cu-1.jpg",
     created_at:"2019-07-18T13:51:49.000Z",
    }
  ])

Friendship.create!([
      {user_id: 2, friend_id:3,
       state:"approved",
      },
      {user_id: 2, friend_id:4,
       state:"approved",
      },
      {user_id: 3, friend_id:4,
       state:"approved",
      },
      {user_id: 4, friend_id:5,
       state:"approved",
      },
])

School.create!([
  {name: "Đại học Bách Khoa Hà Nội", longitude: 21.004853, latitude: 105.844980},
  {name: "Đại học Xây dựng Hà Nội", longitude: 21.003664, latitude: 105.843321},
  {name: "Đại học Thương mại Hà Nội", longitude: 21.036740, latitude: 105.775132},
  {name: "Đại học Ngoại thương Hà Nội", longitude: 21.023353, latitude: 105.805448},
  {name: "Đại học Mỏ địa chất Hà Nội", longitude: 21.071951, latitude: 105.773941},
]) 