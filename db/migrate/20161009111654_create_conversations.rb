class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
       t.integer :sender_doctor_id
       t.integer :recipient_user_id
       t.integer :sender_user_id
       t.integer :recipient_doctor_id
       t.timestamps
    end
  end

end
