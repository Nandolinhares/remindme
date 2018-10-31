class CreateAtributos < ActiveRecord::Migration[5.1]
  def change
    create_table :atributos do |t|
      t.string :name
      t.references :requirement, foreign_key: true

      t.timestamps
    end
  end
end
