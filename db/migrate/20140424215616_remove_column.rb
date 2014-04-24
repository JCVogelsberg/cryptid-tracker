class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :sightings, :cryptid_id
  end
end
