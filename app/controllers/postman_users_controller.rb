class PostmanUsersController < ApplicationController
  before_action :set_postman_user, only: [:show, :edit, :update, :destroy]

  # GET /postman_users
  def index
    @postman_users = PostmanUser.all
  end

  # GET /postman_users/1
  def show
    @postman_user = PostmanUser.find(params[:id])
    @recipes = @postman_user.recipes
  end

  # GET /postman_users/new
  def new
    @postman_user = PostmanUser.new
  end

  # GET /postman_users/1/edit
  def edit
  end

  # POST /postman_users
  def create
    @postman_user = PostmanUser.new(postman_user_params)
    if @postman_user.save
      flash[:success] = 'Postman user was sucessfully created'
      redirect_to @postman_user
    else
      render :new 
    end

  end

  # PATCH/PUT /postman_users/1
  def update
    if @postman_user.update(postman_user_params)
      flash[:success] = 'Postman user updated!'
      redirect_to @postman_user
    else
      render :edit
    end
  
  end

  # DELETE /postman_users/1
  def destroy
    @postman_user.destroy
    flash[:success] = 'Postman user deleted!'
    redirect_to postman_users_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postman_user
      @postman_user = PostmanUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postman_user_params
      params.require(:postman_user).permit(:name, :email, :height, :weight)
    end
end
