class CreateProcessRegisters < ActiveRecord::Migration
  def self.up
    create_table :process_registers do |t|
      t.references :proprietary, :null => false 
      t.references :vehicle, :null => false 
      t.string :register_type, :limit => 50, :null => false  
      t.string :process_status, :limit => 50 
      t.text :notes
      t.string :documents

      t.timestamps
    end
  end

  def self.down
    drop_table :process_registers
  end
end
