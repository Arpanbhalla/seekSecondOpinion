# == Schema Information
#
# Table name: doctors
#
#  id                      :integer          not null, primary key
#  image                   :text
#  firstname               :text
#  lastname                :text
#  qualifications          :text
#  speciality              :text
#  expertise               :text
#  professional_experience :text
#  awards_recognitions     :text
#  memberships             :text
#  publications            :text
#  email                   :text
#  password_digest         :text
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class Doctor < ActiveRecord::Base
  has_many :conversations, :foreign_key => :sender_doctor_id
  has_many :conversations, :foreign_key => :recipient_doctor_id

  has_secure_password

  validates :firstname, presence: true, uniqueness: true, length: { minimum: 2 }
  validates :lastname, presence: true, uniqueness: true, length: { minimum: 5 }
  validates :qualifications, presence: true,length: { minimum: 2 }
  validates :speciality, presence: true,length: { minimum: 4 }
  validates :email, presence: true, uniqueness: true, format: { with: /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i,
    message: "Now a valid email address" },length: { minimum: 5 }

end
