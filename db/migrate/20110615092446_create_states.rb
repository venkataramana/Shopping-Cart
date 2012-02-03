class CreateStates < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.integer :state_id
      t.integer :counry_id
      t.string :state_name

      t.timestamps
    end
  end

  def self.down
    drop_table :states
  end
end
