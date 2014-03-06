# 50.times do |i|
# 	User.create({
# 		name: Faker::Name.name,
# 		email: Faker::Internet.email,
# 		password: 'password',
# 		password_confirmation: 'password'
		
# 		})
# end
# @users = User.all
# 50.times do |x|
# 	user = @users.sample
# 	user.tweets.create({
# 	post: Faker::BaconIpsum.paragraph(1)
# 		})
# end