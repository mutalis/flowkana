class StrainsController < ApplicationController
  def new
    @strain = Strain.new
  end

  def create
    @strain = Strain.new(strain_params)

    if @strain.save
      flash[:notice] = 'Strain created successfully'
      redirect_to strain_path(@strain)
    else
      flash[:alert] = "Strain couldn't be created"
      render :edit
    end
  end

  def show
    @strain = Strain.includes(:farm).find(params[:id])
  end

  def edit
    @strain = Strain.includes(:farm).find(params[:id])
  end

  def update
    @strain = Strain.find(params[:id])

    if @strain.update(strain_params)
      flash[:notice] = 'Strain updated successfully'
      redirect_to strain_path(@strain)
    else
      flash[:alert] = "Strain couldn't be updated"
      render :edit
    end
  end

  def index
    @strains = Strain.includes(:farm)
  end

  private

  def strain_params
    params.require(:strain).permit(:name, :farm_id, :family, :thc, :cbd, :weight, :purchase_price_per_gram)
  end
end
