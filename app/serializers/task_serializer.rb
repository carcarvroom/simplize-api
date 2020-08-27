class TaskSerializer < ActiveModel::Serializer
  attributes :id, :owner, :text, :importance, :resolved
  has_one :board
  has_one :user
end
