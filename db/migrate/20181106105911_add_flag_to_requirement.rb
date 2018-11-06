class AddFlagToRequirement < ActiveRecord::Migration[5.1]
  def change
    add_column :requirements, :flag, :boolean
  end
end
