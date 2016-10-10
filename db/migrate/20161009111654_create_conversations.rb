class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
       t.integer :sender_id # doctor_id
       t.integer :recipient_id # patient_id
       t.timestamps
    end
  end

end
