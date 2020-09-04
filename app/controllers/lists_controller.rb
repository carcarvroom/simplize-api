class ListsController < ApplicationController
  def index
    lists = List.all
    render json: ListSerializer.new(lists)
end

def show
    list = list.find(params[:id])
    render json: ListSerializer.new(list)
end

def create
    list = List.create(list_params)
    if list.valid?
      render json: ListSerializer.new(list)
  else
      render json: {error: list.errors.full_messages}
  end
end

def update 
    list = List.find(params[:id])
    list.update(list_params)
end

def destroy 
    list = List.find(params[:id]).destroy
end 

private
def list_params
    params.permit(:text, :task_id, :user_id)
end

end
