class TasksController < ApplicationController
  def create
    task = Task.create(task_params)
    if task.valid?
      render json: {task: TaskSerializer.new(task)}
    else
      render json: {error: task.errors.full_messages}
    end
  end

  def update 
    task = Task.find(params[:id])
    task.update(task_params)
  end

  def destroy 
    task = Task.find(params[:id]).destroy
  end 

  private
  def task_params
    params.permit(:title, :description, :priority, :resolved, :status, :board_id, :owner_id, :list_id)
  end
end
