class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :title
      t.datetime :deadline
      t.text :objective
      t.boolean :complete
      t.string :comment
      t.references :task_group
      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
