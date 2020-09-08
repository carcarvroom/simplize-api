class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :owner_id, :description, :priority, :resolved, :status, :created_at, :updated_at

  def priority
    if self.object.priority
      self.object.priority.capitalize
    end
  end

  def status
    self.object.status.capitalize
  end

end
