class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :position
  has_many :tasks
  has_one :board
end
