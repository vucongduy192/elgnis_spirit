
User.create!([
                 {email: "trinhhuuvu@gmail.com",
                  password: "12345678", password_confirmation: "12345678",
                  name: "trinhhuuvu", age: "21"},
                 {email: "kieuthuong@gmail.com",
                  password: "12345678", password_confirmation: "12345678",
                  name: "kieuthuong", age: "21",},
                 {email: "dothihai@gmail.com",
                  password: "12345678", password_confirmation: "12345678",
                  name: "dothihai", age: "21",},
                 {email: "duongson@gmail.com",
                  password: "12345678", password_confirmation: "12345678",
                  name: "duongson", age: "21"}
             ])
Image.create!([
                  {user_id: 1 , title:"deep :)))",
                   link:"https://scontent.fhan2-1.fna.fbcdn.net/v/t1.0-9/14992033_1106504392799148_8276075505493222468_n.jpg?_nc_cat=101&_nc_ht=scontent.fhan2-1.fna&oh=f270ddaf3f5183612944b9936d3a72ec&oe=5C918EF0",
                   created_at:"2018-07-18T13:54:16.000Z",
                  },
                  {user_id: 2, title:"Chúng bạn đang hẹn nhau đi chơi .có vẻ vui.",
                   link:"https://instagram.fhan2-4.fna.fbcdn.net/vp/2872da1226c56be38aa94c4f83ef08cc/5C915107/t51.2885-15/e35/27577175_459578151125695_6942818409260253184_n.jpg",
                   created_at:"2018-07-18T13:54:16.000Z",
                  },
                  {user_id: 3, title:"purpose #taeyeon #snsd",
                   link:"https://scontent.fhan2-4.fna.fbcdn.net/v/t1.0-9/46188571_748287192178348_968698047905136640_n.jpg?_nc_cat=104&_nc_ht=scontent.fhan2-4.fna&oh=9bb28e826332368e466f430e4174b32e&oe=5C8CC189",
                   created_at:"2018-07-18T13:53:44.000Z",
                  },
                  {user_id: 4, title:"Đẹp trai từ bé.",
                   link:"https://instagram.fhan2-4.fna.fbcdn.net/vp/4ed495da6bd8db11235b3a5e13b51e86/5C920C96/t51.2885-15/e35/36769819_486143255165122_1460806759206617088_n.jpg?_nc_ht=instagram.fhan2-4.fna.fbcdn.net",
                   created_at:"2018-07-18T13:52:28.000Z",
                  },
              ])
# Friendship.create!([
#                   {user_id: 1, friend_id:2,
#                    state:"approved",
#                   },
#                   {user_id: 1, friend_id:3,
#                    state:"approved",
#                   },
#                   {user_id: 1, friend_id:4,
#                    state:"approved",
#                   },
#                   {user_id: 1, friend_id:5,
#                    state:"approved",
#                   },
#               ])