class BoardSerializer < ActiveModel::Serializer
  attributes :id, :name, :board_type
  has_many :tasks
  has_many :lists
end
