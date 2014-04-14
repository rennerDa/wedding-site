class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.string :place
      t.date :shooting_date
      t.text :description

      t.timestamps
    end
  end
end
