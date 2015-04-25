class RemoveTaskLimitFromTasks < ActiveRecord::Migration
  def change
  	remove_column :tasks, :task_limit
  end
end
