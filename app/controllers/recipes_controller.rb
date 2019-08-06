class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
  end

  # GET /recipes/1/edit
  def edit
  end

  # POST /recipes
  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      flash[:success] = 'Recipe was successfully created.'
      redirect_to @recipe
    else
      render :new
    end

  end

  # PATCH/PUT /recipes/1
  def update
    if @recipe.update(recipe_params)
      flash[:success] = 'Recipe was successfully updated.'
      redirect_to @recipe
    else
      render :edit
    end
  
  end

  # DELETE /recipes/
  def destroy
    @recipe.destroy
    flash[:success] = 'Recipe destroyed!'
    redirect_to recipes_url
  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:IntakeVitC, :IntakeVitD3, :IntakeIron, :ActivityVitC, :ActivityVitD3, :ActivityIron, :postman_user_id)
    end
end
