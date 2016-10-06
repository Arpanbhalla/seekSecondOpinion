# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string
#  firstname       :string
#  lastname        :string
#  email           :text
#  dob             :date
#  image           :text
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
