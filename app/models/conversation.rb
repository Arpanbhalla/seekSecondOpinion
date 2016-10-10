# == Schema Information
#
# Table name: conversations
#
#  id                  :integer          not null, primary key
#  sender_doctor_id    :integer
#  recipient_user_id   :integer
#  sender_user_id      :integer
#  recipient_doctor_id :integer
#  created_at          :datetime
#  updated_at          :datetime
#

class Conversation < ActiveRecord::Base
  belongs_to :sender_user, :foreign_key => :sender_user_id, class_name: 'User'
  belongs_to :sender_doctor, :foreign_key => :sender_doctor_id, class_name: 'Doctor'
  belongs_to :recipient_user, :foreign_key => :recipient_user_id, class_name: 'User'
  belongs_to :recipient_doctor, :foreign_key => :recipient_doctor_id, class_name: 'Doctor'

  has_many :messages, dependent: :destroy

  validates_uniqueness_of :sender_user_id, :scope => :recipient_doctor_id
  validates_uniqueness_of :sender_doctor_id, :scope => :recipient_user_id

  scope :between, -> (sender_user_id,recipient_doctor_id) do
    where("(conversations.sender_user_id = ? AND conversations.recipient_doctor_id =?) OR (conversations.sender_user_id = ? AND conversations.recipient_doctor_id =?)", sender_user_id,recipient_doctor_id, recipient_doctor_id, sender_user_id)
  end

  scope :between, -> (sender_doctor_id,recipient_user_id) do
    where("(conversations.sender_doctor_id = ? AND conversations.recipient_user_id =?) OR (conversations.sender_doctor_id = ? AND conversations.recipient_user_id =?)", sender_doctor_id,recipient_user_id, recipient_user_id, sender_doctor_id)
  end

end
