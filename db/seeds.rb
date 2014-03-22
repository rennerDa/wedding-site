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
  ['Testgalerie', 'Ringschmiede', 'JGA Jenny', 'JGA Daniel'].each do |name|
    gal = Gallery.create!(:name => name, :place => '/', :shooting_date => Date.today)
    ['01.jpg', '02.jpg', '03.jpg', '04.jpg', '05.jpg'].each do |pic_name|
      pic = Picture.create!(:filepath => '/', :filename => pic_name, :filesize => 1.2, :gallery => gal)
      if pic_name == '01.jpg'
        gal.picture = pic
        gal.save!
      end
    end
  end

end