class Type < ApplicationRecord
    has_many :pizzas, dependent: :destroy
end
