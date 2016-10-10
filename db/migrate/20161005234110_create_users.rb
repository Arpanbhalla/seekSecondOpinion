class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string  :firstname
      t.string  :lastname
      t.text    :image
      t.text    :email
      t.date    :dob
      t.boolean :admin, :default => false
      t.boolean :doctor, :defult => false
      t.text    :doctor_qualifications
      t.text    :doctor_speciality
      t.text    :doctor_expertise
      t.text    :doctor_professional_experience
      t.text    :doctor_awards_recognitions
      t.text    :doctor_memberships
      t.text    :doctor_publications
      t.text    :password_digest

      t.timestamps null: false
    end
  end
end
