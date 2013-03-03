class AddProcessId < ActiveRecord::Migration
  def self.up
    #add_column :main_registers, :process_register_id, :integer, :options => {:null=> false}
    #add_column :hypothecs, :process_register_id, :integer, :options => {:null=> false}
    #add_column :proprietary_registers, :process_register_id, :integer, :options => {:null=> false}
    
    remove_columns :main_registers, :name, :proprietary_id, :vehicle_id, :notes, :status 
    remove_columns :hypothecs, :name, :proprietary_id, :vehicle_id, :notes, :status 
    remove_columns :proprietary_registers, :name, :proprietary_id, :vehicle_id, :notes, :status 
  end

  def self.down
    remove_column :main_registers, :process_register_id
    add_column :main_registers, :name, :string, :options => {:limit => 50, :null => false}
    add_column :main_registers, :proprietary_id, :integer
    add_column :main_registers, :vehicle_id, :integer
    add_column :main_registers, :notes, :string
    add_column :main_registers, :status, :string

    remove_column :hypothecs, :process_register_id
    add_column :hypothecs, :name, :string, :options => {:limit => 50}
    add_column :hypothecs, :proprietary_id, :integer, :options => {:null => false}
    add_column :hypothecs, :vehicle_id, :integer, :options => {:null => false}
    add_column :hypothecs, :notes, :string
    add_column :hypothecs, :status, :string, :options => {:null => false}    

    remove_column :proprietary_registers, :process_register_id
    add_column :proprietary_registers, :name, :string, :options => {:null => false}
    add_column :proprietary_registers, :proprietary_id, :integer, :options => {:null => false}
    add_column :proprietary_registers, :vehicle_id, :integer, :options => {:null => false}
    add_column :proprietary_registers, :notes, :string
    add_column :proprietary_registers, :status, :string, :options => {:null => false}
  end
end
