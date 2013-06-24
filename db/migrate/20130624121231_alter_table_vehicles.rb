class AlterTableVehicles < ActiveRecord::Migration
  def self.up
    add_column :vehicles, :vehicle_type, :string, :options => {:limit => 30, :null => false}, :after => :name  
  end

  def self.down
    remove_column :vehicles, :vehicle_type
  end
end
