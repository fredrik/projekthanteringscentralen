class CreateActions < ActiveRecord::Migration
  def self.up
    create_table :actions do |t|
      t.integer :project_id
      t.string :name
      t.text :description
      t.boolean :finished, :default => false
      t.integer :priority, :default => 100 # higher is more important.

      t.timestamps
    end
  end

  def self.down
    drop_table :actions
  end
end
