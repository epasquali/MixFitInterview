class PostmanUsersController < ApplicationController
  before_action :set_postman_user, only: [:show, :edit, :update, :destroy]

  # GET /postman_users
  # GET /postman_users.json
  def index
    @postman_users = PostmanUser.all
  end

  # GET /postman_users/1
  # GET /postman_users/1.json
  def show
  end

  # GET /postman_users/new
  def new
    @postman_user = PostmanUser.new
  end

  # GET /postman_users/1/edit
  def edit
  end

  # POST /postman_users
  # POST /postman_users.json
  def create
    @postman_user = PostmanUser.new(postman_user_params)

    respond_to do |format|
      if @postman_user.save
        format.html { redirect_to @postman_user, notice: 'Postman user was successfully created.' }
        format.json { render :show, status: :created, location: @postman_user }
      else
        format.html { render :new }
        format.json { render json: @postman_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postman_users/1
  # PATCH/PUT /postman_users/1.json
  def update
    respond_to do |format|
      if @postman_user.update(postman_user_params)
        format.html { redirect_to @postman_user, notice: 'Postman user was successfully updated.' }
        format.json { render :show, status: :ok, location: @postman_user }
      else
        format.html { render :edit }
        format.json { render json: @postman_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postman_users/1
  # DELETE /postman_users/1.json
  def destroy
    @postman_user.destroy
    respond_to do |format|
      format.html { redirect_to postman_users_url, notice: 'Postman user was successfully destroyed.' }
      format.json { head :no_content }
    end
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
