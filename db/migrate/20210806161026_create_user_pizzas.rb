class CreateUserPizzas < ActiveRecord::Migration[6.1]
  def change
    create_table :user_pizzas do |t|
      t.integer :rating
      t.text :comment
      t.integer :user_id
      t.integer :pizza_id

      t.timestamps
    end
  end
end
