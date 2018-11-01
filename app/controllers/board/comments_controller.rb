class Board::CommentsController < CommentsController
  before_action :set_commentable

  private
  def set_commentable
    @commentable = Board.find(params[:board_id])
    @url= :board
  end
end
