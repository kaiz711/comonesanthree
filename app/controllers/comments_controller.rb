class CommentsController < ApplicationController
  def create
    @comment = @commentable.comments.new(comment_params)
    if @comment.save
      respond_to do |format|
        format.js
      end
    else

    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      respond_to do |format|
        format.js
      end
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:comment, :title)
    end
end
