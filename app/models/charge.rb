class Charge < ActiveRecord::Base
  belongs_to :user, :foreign_key => :user_id, class_name: 'User'
  belongs_to :doctor, :foreign_key => :doctor_id, class_name: 'User'

  validates_uniqueness_of :user_id, :scope => :doctor_id
  validates_presence_of :payment_charged, :user_id, :doctor_id

end
