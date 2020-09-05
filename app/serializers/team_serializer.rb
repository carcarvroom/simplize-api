class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :organization
  has_many :boards
  has_many :users
end
