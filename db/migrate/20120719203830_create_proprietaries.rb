class CreateProprietaries < ActiveRecord::Migration
  def self.up
    create_table :proprietaries do |t|
      t.integer :nuit, :null => false, :unique => true    
      t.string :name, :null => false, :limit => 70 
      t.date :birth_day
      t.string :occupation, :limit => 50 
      t.text :address

      t.timestamps
    end
  end

  def self.down
    drop_table :proprietaries
  end
end