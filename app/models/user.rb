class User < ApplicationRecord
    has_many :user_pizza, dependent: :destroy
end
