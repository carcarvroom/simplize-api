class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :owner_id, :description, :priority, :resolved, :status, :created_at, :updated_at

  def priority
    self.object.priority.capitalize
  end

  def status
    self.object.status.capitalize
  end

end
