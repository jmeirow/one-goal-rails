require 'faker'
require 'pp'


 clubs = Club.all.collect{|x| x.name}

 buddy = ['y', 'n']

100.times do 

  user = User.new
  user.email = Faker::Internet.email
  user.username = user.email
  user.password_hash = Faker::Internet.password
  user.password_salt = user.password_hash
  user.password = user.password_hash
  user.save

  pp user.errors if user.errors.count > 0


  mbr = Member.new 
  mbr.first_name = Faker::Name.first_name
  mbr.last_name = Faker::Name.last_name
  mbr.phone_number = Faker::PhoneNumber.phone_number
  mbr.club_name = clubs.shuffle.first
  mbr.wants_a_buddy = buddy.shuffle.first
  mbr.user_id = user.id
  mbr.save
  pp mbr.errors if user.errors.count > 0


end



 
