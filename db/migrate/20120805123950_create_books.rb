class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.references :proprietary
      t.references :vehicle
      t.string :register_name, :limit => 50, :null => false  
      t.integer :register_number

      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end
