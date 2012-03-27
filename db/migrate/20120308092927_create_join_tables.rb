class CreateJoinTables < ActiveRecord::Migration
  def change
    create_table :join_tables do |t|
      t.references :plot, :work, :worker, :equipment, :task 
      t.timestamps
    end
    add_index :join_tables, [:plot_id, :work_id, :worker_id, :equipment_id, :task_id], :unique => true, :name => 'index_jointure'
  end
end
