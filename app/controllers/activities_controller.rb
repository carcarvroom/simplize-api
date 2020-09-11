class ActivitiesController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index
    # byebug
    activities = PublicActivity::Activity.order("created_at desc")
    render json: activities, each_serializer: ActivitySerializer
  end

end
