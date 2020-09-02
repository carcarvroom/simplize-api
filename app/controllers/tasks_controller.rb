class TasksController < ApplicationController
    
    def index
        tasks = Task.all
        render json: TaskSerializer.new(tasks)
    end

    def show
        task = Task.find(params[:id])
        render json: TaskSerializer.new(task)
    end

    def create
        task = Task.create(task_params)
        if task.valid?
          render json: TaskSerializer.new(task)
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
        params.permit(:text, :importance, :resolved, :board_id, :owner_id, :user_id)
    end

end
