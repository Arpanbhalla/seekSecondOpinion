class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|

      t.text :image
      t.text :doctors_fullname
      t.text :doctors_qualifications
      t.text :doctors_speciality
      t.text :doctors_expertise
      t.text :doctors_professional_experience
      t.text :doctors_awards_recognitions
      t.text :doctors_memberships
      t.text :doctors_publications
      t.text :doctors_email
      t.text :password_digest

      t.timestamps null: false
    end
  end
end
