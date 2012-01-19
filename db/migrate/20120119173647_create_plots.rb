class CreatePlots < ActiveRecord::Migration
  def change
    create_table :plots do |t|
      t.string :label

      t.timestamps
    end
  end
end
