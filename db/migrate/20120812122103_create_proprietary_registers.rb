class CreateProprietaryRegisters < ActiveRecord::Migration
  def self.up
    create_table :proprietary_registers do |t|
      t.string :name, :null => false, :limint => 50  
      t.references :proprietary, :null => false
      t.date :aquire_date 
      t.string :register_dute, :limit => 50 
      t.float :value
      t.references :vehicle, :null => false 
      t.text :notes
      t.string :status, :null => false 

      t.timestamps
    end
  end

  def self.down
    drop_table :proprietary_registers
  end
end
