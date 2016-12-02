class FarmsController < ApplicationController
  def new
    @farm = Farm.new
  end

  def create
    @farm = Farm.create(farm_params)

    flash[:notice] = 'Farm successfully created.'
    redirect_to :root
  end

  private

  def farm_params
    params.require(:farm).permit(:name, :county)
  end
end
