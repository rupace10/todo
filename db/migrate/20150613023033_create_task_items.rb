class CreateTaskItems < ActiveRecord::Migration
  def change
    create_table :task_items do |t|
      t.string :content
      t.references :task_list, index: true

      t.timestamps
    end
  end
end
