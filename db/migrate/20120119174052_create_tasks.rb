class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :date

      t.timestamps
    end
  end
end
