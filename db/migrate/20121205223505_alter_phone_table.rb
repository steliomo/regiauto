class AlterPhoneTable < ActiveRecord::Migration
  def self.up
    remove_column :phones, :phone_type
  end

  def self.down
    add_column :phones, :phone_type, :string, :options => {:limit => 30, :null => false}
  end
end
