class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.string :category
      t.text :description
      t.integer :stock
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
