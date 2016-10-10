# == Schema Information
#
# Table name: messages
#
#  id              :integer          not null, primary key
#  body            :text
#  conversation_id :integer
#  user_id         :integer
#  doctor_id       :integer
#  read            :boolean          default(FALSE)
#  created_at      :datetime
#  updated_at      :datetime
#

class Message < ActiveRecord::Base
  belongs_to :conversation
  belongs_to :user
  belongs_to :doctor
  validates_presence_of :body, :conversation_id, :user_id, :doctors_id

  def message_time
    created_at.strftime("%m/%d/%y at %l:%M %p")
  end
end
