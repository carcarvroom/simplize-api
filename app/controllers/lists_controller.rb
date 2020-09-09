class ListsController < ApplicationController
  def create
    list = List.create(list_params)
    if list.valid?
      render json: {list: ListSerializer.new(list)}
    else
      render json: {error: list.errors.full_messages}
    end
  end

  def lists_by_board_id
    lists = List.lists_by_id(params[:board_id])
    render json: lists, each_serializer: ListSerializer
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
    params.permit(:name, :board_id, :position)
  end

end
