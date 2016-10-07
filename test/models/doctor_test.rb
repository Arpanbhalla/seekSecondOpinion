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

require 'test_helper'

class DoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
