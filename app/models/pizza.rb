class Pizza < ApplicationRecord
    belongs_to :type
    belongs_to :restaurant
end
