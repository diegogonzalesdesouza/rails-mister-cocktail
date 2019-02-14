class DosesController < ApplicationController
  def index
    @doses = Dose.where('cocktail_id = ?', params[:cocktail_id])
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])

    if @dose.save
      redirect_to @cocktail
    else
      render 'new'
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @cocktail = Cocktail.find(params[:cocktail_id])

    if @dose.delete
      redirect_to cocktails_path
    else
      render @cocktail
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end
