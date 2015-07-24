class UpdateInstant < ActiveRecord::Migration
  def change
    rename_table(:instante_messages, :instant_messages)
  end
end
