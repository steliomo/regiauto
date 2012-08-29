class CreateSaleRegisters < ActiveRecord::Migration
  def self.up
    create_table :sale_registers do |t|
      t.string :name, :limit => 50, :null => false  
      t.integer :customer_id, :null => false 
      t.date :buy_date
      t.float :value
      t.references :vehicle, :null => false 
      t.integer :seller_id, :null => false
      t.text :notes
      t.string :status, :null => false, :limit => 30  

      t.timestamps
    end
  end

  def self.down
    drop_table :sale_registers
  end
end
