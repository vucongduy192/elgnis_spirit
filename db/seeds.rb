User.create(name: "admin test", email: "admin@gmail.com", password: "admin@123",role: "admin")

User.create(name:"user test", email: "user@gmail.com", password: "user@123",role: "member")

10.times do |n|
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
    },
    {user_id: 5, title:"服ビッチョビチョ",
     link:"https://scontent-sea1-1.cdninstagram.com/vp/4574a26502ba8b886cb4afa5bc26b8c4/5BDB466B/t51.2885-15/e35/36740187_460354231105125_316461093109104640_n.jpg",
     created_at:"2018-07-18T13:51:49.000Z",
    },
    {user_id: 5, title:"服ビッチョビチョ",
     link:"https://scontent-sea1-1.cdninstagram.com/vp/a6f681c5265846c85e09905cc968bd61/5BDD9A35/t51.2885-15/e35/36668683_236288813668938_4279607054135459840_n.jpg",
     created_at:"2018-07-18T13:51:49.000Z",
    },
    {user_id: 6, title:"テカリユニャン #高橋ユナ #サロモ",
     link:"https://scontent-sea1-1.cdninstagram.com/vp/700bdc1b16cce64a581e26767b48e964/5BE86843/t51.2885-15/e35/36782245_215839935802153_516403155156598784_n.jpg",
     created_at:"2018-07-18T13:51:49.000Z",
    },
    {user_id: 2, title:". ポートレート撮影してきた☺️ 初めてだったから緊張した🤭 凄い綺麗に撮ってくれてうれしい😳😳 . #ポートレート",
     link:"https://scontent-sea1-1.cdninstagram.com/vp/22103a3c9876bd9f36cd4b2c410ef1f8/5BCE4511/t51.2885-15/e35/36632296_242458339908690_3522524510215471104_n.jpg",
     created_at:"2018-07-18T13:50:00.000Z",
    },
    {user_id: 7, title:"自分の気持ちを押し殺してしまえば 周りを巻き込む事は無くなるよね。 最近上手くいかないし 当たりと思っていた生活も当たり前じゃない。 みんなは今ある生活を大切にして欲しい。 当たりに見えるんだけど一瞬で崩れてしまうの。 だから、お願い。大切にして、友達や彼氏家族もなんだけど物も。 #おしゃれさんと繋がりたい",
     link:"https://scontent-sea1-1.cdninstagram.com/vp/cb3dad73d6845e4074c8c1f21d4d7362/5BDBE6CC/t51.2885-15/e35/36666545_2092605314346466_7345127441825792000_n.jpg",
     created_at:"2018-07-18T13:49:52.000Z",
    },
    {user_id: 8, title:"【掲載されました(*´ω｀*)】 本日シティリビングwebに、6月に撮影した函館女子旅企画がアップされました！ 有楽町にある北海道の観光案内所「どさんこ旅サロン」にて2泊3日の夏女子旅を計画し、 やりたいことをぎゅっと詰め込んだ夢のようなプランを満喫してきました♡ 実は羽田空港から飛行機でたった１時間20分で行けてしまう、北海道の函館。 「ノスタルジック」と「非日常体験」をテーマにした旅の模様をぜひ見ていただけたら嬉しいです♡ #ポートレート ",
     link:"https://scontent-sea1-1.cdninstagram.com/vp/c10fba1b37a3f46e2646b7c96f3ecfd8/5BE18FA6/t51.2885-15/e35/36910255_286155345285440_7542046796084674560_n.jpg",
     created_at:"2018-07-18T13:48:43.000Z",
    },
    {user_id: 8, title:"【掲載されました(*´ω｀*)】 本日シティリビングwebに、6月に撮影した函館女子旅企画がアップされました！ 有楽町にある北海道の観光案内所「どさんこ旅サロン」にて2泊3日の夏女子旅を計画し、 やりたいことをぎゅっと詰め込んだ夢のようなプランを満喫してきました♡ 実は羽田空港から飛行機でたった１時間20分で行けてしまう、北海道の函館。 「ノスタルジック」と「非日常体験」をテーマにした旅の模様をぜひ見ていただけたら嬉しいです♡ #ポートレート ",
     link:"https://scontent-sea1-1.cdninstagram.com/vp/0eecc724491758575fe0dd3c95b8eae5/5BE84636/t51.2885-15/e35/36662169_684751648542497_6470035418703200256_n.jpg",
     created_at:"2018-07-18T13:48:43.000Z",
    },
    
   
    
    
])