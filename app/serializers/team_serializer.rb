class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :organization
  has_one :user
end
