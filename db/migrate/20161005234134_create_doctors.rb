class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|

      t.text :image
      t.text :fullname
      t.text :qualifications
      t.text :speciality
      t.text :expertise
      t.text :professional_experience
      t.text :awards_recognitions
      t.text :memberships
      t.text :publications
      t.text :email
      t.text :password_digest

      t.timestamps null: false
    end
  end
end
