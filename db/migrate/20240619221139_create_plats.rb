class CreatePlats < ActiveRecord::Migration[7.1]
  def change
    create_table :plats do |t|
      t.string :nom
      t.string :categorie
      t.string :ingredients
      t.string :description
      t.float :prix
      t.string :image

      t.timestamps
    end
  end
end
