class RenameColumnTypeInTableWinesToColour < ActiveRecord::Migration[5.2]
  def change
    rename_column :wines, :type, :colour
  end
end
