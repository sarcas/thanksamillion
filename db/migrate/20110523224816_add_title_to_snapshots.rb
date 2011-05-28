class AddTitleToSnapshots < ActiveRecord::Migration
  def self.up
    add_column :snapshots, :title, :string
  end

  def self.down
    remove_column :snapshots, :title
  end
end
