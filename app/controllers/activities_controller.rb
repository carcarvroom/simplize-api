class ActivitiesController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index
    activities = PublicActivity::Activity.order("created_at desc").limit(10)
    render json: activities, each_serializer: ActivitySerializer
  end

end
