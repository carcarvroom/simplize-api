class ListSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :board
end
