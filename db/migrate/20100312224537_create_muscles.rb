class CreateMuscles < ActiveRecord::Migration
  def self.up
    create_table :muscles do |t|
      t.text :name

      t.timestamps
    end
  end

  def self.down
    drop_table :muscles
  end
end
