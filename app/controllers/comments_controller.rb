class CommentsController < ApplicationController
    
    def index
        comments = Comment.all
        render json: CommentSerializer.new(comments)
    end

    def show
        comment = Comment.find(params[:id])
        render json: CommentSerializer.new(comment)
    end

    def create
        comment = Comment.create(comment_params)
        if comment.valid?
          render json: CommentSerializer.new(comment)
      else
          render json: {error: comment.errors.full_messages}
      end
    end

    def update 
        comment = Comment.find(params[:id])
        comment.update(comment_params)
    end

    def destroy 
        comment = Comment.find(params[:id]).destroy
    end 

    private
    def comment_params
        params.permit(:text, :task_id, :user_id)
    end

end
