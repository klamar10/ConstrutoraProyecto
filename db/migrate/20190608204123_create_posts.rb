class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :tittle
      t.text :descripttion

      t.timestamps
    end
  end
end
