class CreateSnapshots < ActiveRecord::Migration
  def self.up
    create_table :snapshots do |t|
      t.string :code
      t.string :picture_link
      t.text :message
      t.boolean :seen

      t.timestamps
    end
  end

  def self.down
    drop_table :snapshots
  end
end
