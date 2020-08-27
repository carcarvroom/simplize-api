class BoardSerializer < ActiveModel::Serializer
  attributes :id, :name, :type
  has_one :user
  has_one :team
end
