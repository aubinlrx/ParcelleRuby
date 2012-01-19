class CreatePlotInformations < ActiveRecord::Migration
  def change
    create_table :plot_informations do |t|
      t.text :surface
      t.text :commune
      t.integer :section
      t.integer :numero
      t.text :gps
      t.integer :location
      t.references :plot

      t.timestamps
    end
    add_index :plot_informations, :plot_id
  end
end
