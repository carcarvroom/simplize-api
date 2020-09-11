class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :owner_id, :description, :priority, :resolved, :status, :created_at, :updated_at
end
