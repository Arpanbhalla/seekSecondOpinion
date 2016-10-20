class ChangeMessageImageToArray < ActiveRecord::Migration
  def change
    remove_column :messages, :image
    add_column :messages, :images, :text, :array => true, :default => []
  end
end
