class FarmsController < ApplicationController
  def new
    @farm = Farm.new
  end

  def create
    @farm = Farm.new(farm_params)
    if @farm.save
      flash[:notice] = 'Farm successfully created.'
      redirect_to :root
    else
      render :new
    end
  end

  private

  def farm_params
    params.require(:farm).permit(:name, :county)
  end
end
