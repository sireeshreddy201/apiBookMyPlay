class CreateGrounds < ActiveRecord::Migration[5.1]
  def change
    create_table :grounds do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.text :description
      t.text :amenities
      t.string :star_rating
      t.string :website
      t.references :manager, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
