# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  firstname       :string
#  lastname        :string
#  email           :text
#  dob             :date
#  image           :text
#  admin           :boolean          default(FALSE)
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_many :conversations, :foreign_key => :sender_id
  has_secure_password
  validates :firstname, presence: true,length: { minimum: 2 }
  validates :lastname, presence: true,length: { minimum: 2 }
  validates :email, presence: true, uniqueness: true, format: { with: /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i,
    message: "Now a valid email address" },length: { minimum: 5 }
end
