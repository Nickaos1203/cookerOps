class CommentsController < ApplicationController

  before_action :set_plat, only: %i[new create]

  def new
    @comment = Comment.new
  end


  def create
    @comment = Comment.new(comment_params)
    @comment.plat = @plat
    @comment.save
    redirect_to plat_path(@plat)
  end

  private

  def set_plat
    @plat = Plat.find(params[:plat_id])
  end

  def comment_params
    params.require(:comment).permit(:avis)
  end
end
