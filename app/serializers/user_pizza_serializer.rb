class UserPizzaSerializer < ActiveModel::Serializer
    attributes :id, :rating, :comment, :user_id, :type_id
    belongs_to :user 
    belongs_to :pizza 
  end