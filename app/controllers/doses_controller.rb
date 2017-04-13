class DosesController < ApplicationController
  def index
    @doses = Dose.all
  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(ingredient_params)
    if @dose.save
      flash[:notice] = "#{@dose.name} adicionado"
      redirect_to new_dose_path
    else
      render :new
    end
  end

  private

  def ingredient_params
    params.require(:dose).permit(:description)
  end

end
