class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :details
      t.boolean :done

      t.timestamps
    end
  end
end
