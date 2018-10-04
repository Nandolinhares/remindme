class RemoveTypeFromRequirements < ActiveRecord::Migration[5.1]
  def change
    remove_column :requirements, :type, :text
  end
end
