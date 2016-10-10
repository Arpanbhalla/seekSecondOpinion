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

require 'test_helper'

class DoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
