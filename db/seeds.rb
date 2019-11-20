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