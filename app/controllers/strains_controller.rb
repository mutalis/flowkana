class StrainsController < ApplicationController
  def new
    @strain = Strain.new
  end

  def create
  end

  def show
    @strain = Strain.includes(:farm).find(params[:id])
  end

  def edit
    @strain = Strain.includes(:farm).find(params[:id])
  end

  def update
    @strain = Strain.find(params[:id])
    @strain.update(strain_params)

    flash[:notice] = 'Strain updated successfully'
    redirect_to strain_path(@strain)
  end

  def index
    @strains = Strain.includes(:farm)
  end

  private

  def strain_params
    params.require(:strain).permit(:name, :farm_id, :thc, :cbd, :weight)
  end
end
