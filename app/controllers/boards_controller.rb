class BoardsController < ApplicationController
    
    def index
        boards = Board.all
        render json: BoardSerializer.new(boards)
    end

    def show
        board = Board.find(params[:id])
        render json: BoardSerializer.new(board)
    end

    def create
        board = Board.create(board_params)
        if board.valid?
          render json: BoardSerializer.new(board)
      else
          render json: {error: board.errors.full_messages}
      end
    end

    def update 
        board = Board.find(params[:id])
        board.update(board_params)
    end

    def destroy 
        board = Board.find(params[:id]).destroy
    end 

    private
    def board_params
        params.permit(:text, :task_id, :user_id)
    end
end
