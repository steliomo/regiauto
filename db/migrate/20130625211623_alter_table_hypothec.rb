class AlterTableHypothec < ActiveRecord::Migration
  def self.up
    rename_column :hypothecs, :outsanding, :outstanding
  end

  def self.down
    rename_column :hypothecs, :outstanding, :outsanding
  end
end
