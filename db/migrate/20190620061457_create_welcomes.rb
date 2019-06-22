class CreateWelcomes < ActiveRecord::Migration[5.1]
  def change
    create_table :welcomes do |t|
      t.string :nombre
      t.string :apellido
      t.string :email
      t.integer :dni
      t.integer :telef
      t.string :contra

      t.timestamps
    end
  end
end
