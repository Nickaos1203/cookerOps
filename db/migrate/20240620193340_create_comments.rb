class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.integer :note
      t.string :avis
      t.string :picture
      t.references :plat, null: false, foreign_key:true

      t.timestamps
    end
  end
end
