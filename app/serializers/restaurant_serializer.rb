class RestaurantSerializer < ActiveModel::Serializer
    attributes :id, :name, :address, :phone_number, :website
    has_many :pizzas
  end