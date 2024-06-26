class PlatsController < ApplicationController
  def index
    @plats = Plat.all
  end

  def show
    @plat = Plat.find(params[:id])
  end

  def new
    @plat = Plat.new
  end

  def create
    @plat = Plat.new(plats_params)
    if @plat.save
      redirect_to plats_path(@spot)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @plat = Plat.find(params[:id])
  end

  def update
    @plat = Plat.find(params[:id])
    @plat.update(params[:plat])
    redirect_to plat_path(@plat)
  end

  def destroy
    @plat = Plat.find(params[:id])
    @plat.destroy
    redirect_to plats_path, status: :see_other
  end

  private

  def plats_params
    params.require(:plat).permit(:nom, :categorie, :ingredients, :image, :prix)
  end

end
