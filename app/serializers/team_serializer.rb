class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :organization, :user
end
