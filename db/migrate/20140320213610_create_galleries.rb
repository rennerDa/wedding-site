class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.string :place
      t.string :main_picture
      t.integer :pictures
    end
  end
end
