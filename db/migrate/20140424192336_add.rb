class Add < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.integer :user_id
      t.integer :cryptid_id
      t.string :name
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
