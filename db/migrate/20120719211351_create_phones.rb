class CreatePhones < ActiveRecord::Migration
  def self.up
    create_table :phones do |t|
      t.string :phone_type, :null => false, :limit => 30 
      t.integer :country_code, :limit => 10
      t.integer :prefix_code, :limit => 5 
      t.integer :number
      t.references :proprietary

      t.timestamps
    end
  end

  def self.down
    drop_table :phones
  end
end
