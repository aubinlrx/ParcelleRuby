class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :nom
      t.string :prenom

      t.timestamps
    end
  end
end
