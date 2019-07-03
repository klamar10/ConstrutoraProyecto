class CreateRegusus < ActiveRecord::Migration[5.1]
  def change
    create_table :regusus do |t|
      t.text :contrasena
      t.string :nombre
      t.string :apellido
      t.text :email
      t.integer :dni
      t.integer :telefono

      t.timestamps
    end
  end
end
