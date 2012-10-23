class RanameColumns < ActiveRecord::Migration
  def self.up
    rename_column :main_registers, :name, :type
    rename_column :hypothecs, :name, :type
    rename_column :sale_registers, :name, :type
    rename_column :proprietary_registers, :name, :type
  end

  def self.down
    rename_column :main_registers, :type, :name
    rename_column :hypothecs, :type, :name      
    rename_column :sale_registers, :type, :name
    rename_column :proprietary_registers, :type, :name
  end
end