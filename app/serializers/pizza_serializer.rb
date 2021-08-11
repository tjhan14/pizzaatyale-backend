class PizzaSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :image_url
  belongs_to :type
  belongs_to :restaurant
  has_many :user_pizzas
end
