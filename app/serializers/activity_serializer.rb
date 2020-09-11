class ActivitySerializer < ActiveModel::Serializer
  attributes :trackable_type, :owner_id, :parameters, :updated_at, :created_at

  def created_at
    self.object.created_at.in_time_zone('Pacific Time (US & Canada)').strftime("%m/%d/%Y %I:%M %P")
  end
end
