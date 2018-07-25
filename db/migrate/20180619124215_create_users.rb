class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email,unique:true
      t.string :user_name,unique:true
      t.string :password_digest
      t.string :city
      t.integer :role,default: 0
      t.string :uniq_id,unique:true
      t.string :user_token
      t.boolean :email_confirmed, default: false
      t.string :mobile_number,unique:true

      t.timestamps
    end
  end
end
