class CreatePictures < ActiveRecord::Migration
  def change

    create_table :pictures do |t|

      t.string  :filepath
      t.string  :filename
      t.float :filesize

      t.belongs_to :gallery

      t.timestamps
    end

    change_table :galleries do |t|
      t.references :picture
    end

    add_index :galleries, :picture_id
    add_index :pictures, :gallery_id
  end
end
