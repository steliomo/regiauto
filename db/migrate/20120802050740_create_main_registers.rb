class CreateMainRegisters < ActiveRecord::Migration
  def self.up
    create_table :main_registers do |t|
      t.string :name, :limit => 50, :null => false  
      t.references :Proprietary
      t.string :vehicle_provenience
      t.references :Vehicle
      t.text :notes
      t.string :status, :null => false 
      

      t.timestamps
    end
  end

  def self.down
    drop_table :main_registers
  end
end
