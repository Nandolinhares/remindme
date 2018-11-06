class AddAtributoRadioToRequirements < ActiveRecord::Migration[5.1]
  def change
    add_column :requirements, :atributo_radio, :string
  end
end
