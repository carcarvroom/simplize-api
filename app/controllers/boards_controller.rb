class BoardsController < ApplicationController

    def my_boards_by_type
        boards = Board.get_boards_by_type(params[:id], params[:type])
        render json: boards, each_serializer: BoardSerializer
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
        params.permit(:name, :board_type, :team_id, :user_id)
    end
end
