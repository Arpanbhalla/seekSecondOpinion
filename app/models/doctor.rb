# == Schema Information
#
# Table name: doctors
#
#  id                              :integer          not null, primary key
#  image                           :text
#  doctors_fullname                :text
#  doctors_qualifications          :text
#  doctors_speciality              :text
#  doctors_expertise               :text
#  doctors_professional_experience :text
#  doctors_awards_recognitions     :text
#  doctors_memberships             :text
#  doctors_publications            :text
#  doctors_email                   :text
#  password_digest                 :text
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#

class Doctor < ActiveRecord::Base
  has_secure_password
  # validates :doctors_fullname, presence: true, uniqueness: true, length: { minimum: 5 }
  # validates :doctors_qualifications, presence: true,length: { minimum: 2 }
  # validates :doctors_speciality, presence: true,length: { minimum: 4 }
  # validates :doctors_email, presence: true, uniqueness: true, format: { with: /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i,
  #   message: "Now a valid email address" },length: { minimum: 5 }
end
