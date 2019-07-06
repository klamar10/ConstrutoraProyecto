class CreateMantenis < ActiveRecord::Migration[5.1]
  def change
    create_table :mantenis do |t|
      t.string :nombre
      t.string :caracteristicas
      t.text :areacomun
      t.integer :pisos
      t.text :ubicacion

      t.timestamps
    end
  end
end
