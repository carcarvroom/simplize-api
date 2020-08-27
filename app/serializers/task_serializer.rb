class TaskSerializer < ActiveModel::Serializer
  attributes :id, :owner_id, :text, :importance, :resolved
  has_one :board
  has_one :user
end
