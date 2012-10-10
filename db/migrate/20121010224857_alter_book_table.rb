class AlterBookTable < ActiveRecord::Migration
  def self.up
    remove_column :books, :register_name
    remove_column :books, :register_number 
  end

  def self.down
    add_column  :books, :regiter_name, :string, :limit => 50, :null => false
    add_column  :books, :register_number, :integer  
  end
end
