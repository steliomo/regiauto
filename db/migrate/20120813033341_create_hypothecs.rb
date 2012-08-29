class CreateHypothecs < ActiveRecord::Migration
  def self.up
    create_table :hypothecs do |t|
      t.string :name, :limit => 50 
      t.references :proprietary, :null => false 
      t.string :applicant, :limit => 50 
      t.string :contract_document, :limit => 70 
      t.float :value
      t.references :vehicle, :null => false 
      t.float :outsanding
      t.string :dept_origin, :limit => 50
      t.float :interest_rate
      t.text :notes
      t.string :status, :null => false   

      t.timestamps
    end
  end

  def self.down
    drop_table :hypothecs
  end
end
