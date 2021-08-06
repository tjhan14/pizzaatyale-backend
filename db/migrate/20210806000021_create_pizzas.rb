class CreatePizzas < ActiveRecord::Migration[6.1]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :restaurant_id
      t.integer :type_id

      t.timestamps
    end
  end
end
