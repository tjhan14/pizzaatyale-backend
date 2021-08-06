class Restaurant < ApplicationRecord
    has_many :pizzas, dependent: :destroy
end