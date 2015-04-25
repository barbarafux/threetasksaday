class RemoveTaskDoneFromTasks < ActiveRecord::Migration
  def change
  	remove_column :tasks, :done
  end
end
