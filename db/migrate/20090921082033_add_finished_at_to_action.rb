class AddFinishedAtToAction < ActiveRecord::Migration
  def self.up
    add_column :actions, :finished_at, :timestamp
  end

  def self.down
    remove_column :actions, :finished_at
  end
end
