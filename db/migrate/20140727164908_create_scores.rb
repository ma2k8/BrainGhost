class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :user_id
      t.float :score
      t.integer :category_id
      t.integer :task_id
      t.references :user, index: true
      t.references :category, index: true
      t.references :task, index: true

      t.timestamps
    end
  end
end
