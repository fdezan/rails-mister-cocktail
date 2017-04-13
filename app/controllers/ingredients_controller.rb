class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredients = Ingredient.new
  end

  def create
    @ingredients = Ingredient.new(ingredient_params)
    if @ingredients.save
      flash[:notice] = "#{@ingredients.name} adicionado"
      redirect_to new_cocktail_path
    else
      render :new
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
