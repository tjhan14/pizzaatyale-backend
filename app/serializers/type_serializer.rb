class TypeSerializer < ActiveModel::Serializer
    attributes :id, :name, :description
    has_many :pizzas
  end