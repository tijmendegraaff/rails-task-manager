class AddDefaultValueToDone < ActiveRecord::Migration[5.0]
  def change
    remove_column :tasks, :done, :boolean
    add_column :tasks, :done, :boolean, default: false
  end
end
