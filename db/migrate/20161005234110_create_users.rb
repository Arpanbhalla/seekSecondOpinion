class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :username
      t.string :firstname
      t.string :lastname
      t.text   :email
      t.date   :dob
      t.text   :image
      t.text   :password_digest

      t.timestamps null: false
    end
  end
end
