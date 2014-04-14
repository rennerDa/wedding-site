def createPictures gallery, pictures, main_picture_name
  pictures.each do |picture|
    fileSize = File.size(picture).to_f / 1024
    pic = Picture.create!(:filepath => File.dirname(picture), :filename => picture.split('/').last, :filesize => fileSize, :gallery => gallery)
    if picture.split('/').last == main_picture_name
      gallery.picture = pic
      gallery.save!
    end
  end
end

# Create users
if !User.exists?(:email => 'test@test.de')
  puts 'Create test user'
  User.create!(:email => 'test@test.de', :password => 'testtest', :password_confirmation => 'testtest')
end

# Create every single gallery - its not necessary to create a backend, seeding is enough for our purposes
if !Gallery.exists?(:name => 'Ringe schmieden')

  gal = Gallery.create!(:name => 'Ringe schmieden', :place => '/', :shooting_date => Date.new(2014, 4, 12), :description => 'Testbezeichnung super Testbezeichnung')
  pictures = Dir.glob(Rails.root.join('02_Pictures', 'galleries', 'ringe_schmieden', '*.jpg'))
  createPictures gal, pictures, 'p2240233.jpg'

end