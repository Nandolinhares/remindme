class AddAtributoToRequirements < ActiveRecord::Migration[5.1]
  def change
    add_column :requirements, :atributo, :string
  end
end
