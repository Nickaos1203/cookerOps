class CommentsController < ApplicationController

  before_action :set_plat, only: %i[new create]

  def new
    @comment = Comment.new
  end


  def create
    @comment = Comment.new(comment_params)
    @comment.plat = @plat
    if @comment.save
      redirect_to plat_path(@plat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to plat_path(@comment.plat), status: :see_other
  end



  private

  def set_plat
    @plat = Plat.find(params[:plat_id])
  end

  def comment_params
    params.require(:comment).permit(:avis)
  end
end
