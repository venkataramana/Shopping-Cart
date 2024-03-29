class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :category_id
      t.integer :product_id
      t.string :product_name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
