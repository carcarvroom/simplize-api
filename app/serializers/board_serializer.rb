class BoardSerializer < ActiveModel::Serializer
  attributes :id, :name, :board_type
  has_one :user
  has_one :team
end
