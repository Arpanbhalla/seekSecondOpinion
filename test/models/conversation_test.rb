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

require 'test_helper'

class ConversationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
