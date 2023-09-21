class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name,       null: false
      t.integer :quantity,  null: false
      t.references :recipe, null: false, foreign_key: true
      t.timestamps
    end
  end
end