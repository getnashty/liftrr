class CreateLifts < ActiveRecord::Migration
  def self.up
    create_table :lifts do |t|
      t.integer :user_id
      t.integer :exercise_id
      t.integer :weight

      t.timestamps
    end
  end

  def self.down
    drop_table :lifts
  end
end
