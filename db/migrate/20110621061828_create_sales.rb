class CreateSales < ActiveRecord::Migration
  def self.up
    create_table :sales do |t|
      t.string :bank_name
      t.string :atm_number
      t.decimal :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :sales
  end
end
