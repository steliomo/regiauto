class AlterProcessRegisterAndBookTable < ActiveRecord::Migration
  def self.up
    add_column :process_registers, :delivery_status, :boolean, :options=>{:null => false}
    add_column :books, :process_register_id, :integer, :oprions => {:null => false } 
  end

  def self.down
    remove_column :process_registers, :delivery_status
    remove_column :books, :process_register_id
  end
end
