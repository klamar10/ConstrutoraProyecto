class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.text :email
      t.text :cont
      t.integer :dni
      t.date :fech
      t.integer :telef
      t.text :direccion

      t.timestamps
    end
  end
end
