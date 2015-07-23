class RenameGroupToGroups < ActiveRecord::Migration
  def change
  	rename_table(:group, :groups)
  	rename_table(:task, :tasks)
  	rename_table(:user_group,:user_groups)
  	rename_table(:instante_message, :instante_messages)
  end
end
