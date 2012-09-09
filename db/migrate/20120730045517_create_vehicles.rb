class CreateVehicles < ActiveRecord::Migration
  def self.up
    create_table :vehicles do |t|
      t.string :name, :null => false, :unique => true, :limit => 30 #nr_plate
      t.string :mark, :null => false, :limit => 50  
      t.string :model, :null => false, :limit => 50
      t.string :frame_number, :null => false, :limit => 50
      t.string :engine_number, :null => false, :limit => 50    
      t.integer :cylinders, :null => false, :limit => 5
      t.integer :cylinders_cc, :null => false   
      t.string :petrol, :null => false, :limit => 50
      t.string :transmission, :null => false, :limit => 50  
      t.string :pneumatic_measures, :null => false, :limit => 30
      t.float :gross_weight
      t.float :tare, :null => false
      t.integer :stocking, :null => false     
      t.string :color,  :null => false, :limit => 50
      t.string :service, :null => false, :limit => 100         
       
      t.timestamps
    end
  end

  def self.down
    drop_table :vehicles
  end
end
