class Pizza < ApplicationRecord
    has_many :user_pizzas
    belongs_to :type
    belongs_to :restaurant

end
