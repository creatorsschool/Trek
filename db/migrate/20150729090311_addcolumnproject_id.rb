class AddcolumnprojectId < ActiveRecord::Migration
  def change
  	remove_column(:groups, :user)
  	add_column(:groups, :project_id, :integer)
  end
end
