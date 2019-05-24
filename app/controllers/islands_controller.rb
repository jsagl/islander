class IslandsController < ApplicationController
  def index
    @islands = policy_scope(Island).order(created_at: :asc)
  end

  def show
    @island = Island.find(params[:id])
    authorize @island
  end

  def new
    @island = Island.new
    authorize @island
  end

  def create
    @island = Island.new(island_params)
    @island.user = current_user
    authorize @island
    if @island.save
      redirect_to island_path(@island)
    else
      render :new
    end
  end

  def edit
    @island = Island.find(params[:id])
  end

  def update
    @island = Island.find(params[:id])
    if @island.update(island_params)
      redirect_to island_path(@island)
    else
      render :edit
    end
  end

  def destroy
    @island = Island.find(params[:id])
    authorize @island
    @island.destroy
    redirect_to islands_path
  end

  private

  def island_params
    params.require(:island).permit(:name, :country, :title, :description, :number_of_guests, :price_per_day, :photo)
  end
end
