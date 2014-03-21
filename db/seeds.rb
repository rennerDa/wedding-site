# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if !User.exists?(:email => 'test@test.de')
  puts 'Create test user'
  User.create!(:email => 'test@test.de', :password => 'testtest', :password_confirmation => 'testtest')
end
if !Gallery.exists?(:name => 'Testgalerie')
  Gallery.create!(:name => 'Testgalerie', :place => '/', :main_picture => 'jenny.jpg', :pictures => 20)
end