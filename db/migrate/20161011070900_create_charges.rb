class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.integer :doctor_id
      t.integer :user_id
      t.boolean :payment_charged, :default => false
      t.timestamps null: false
    end
  end
end
