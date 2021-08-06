class PizzaSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :restaurant_id, :type_id
  belongs_to :type
  belongs_to :restaurant
end
