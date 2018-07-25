class CreateManagers < ActiveRecord::Migration[5.1]
  def change
    create_table :managers do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.references :user, foreign_key: true
      t.string :mob_number

      t.timestamps
    end
  end
end
