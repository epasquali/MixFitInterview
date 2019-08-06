class PagesController < ApplicationController
  def main
  end

  def about
  end

  def loginpage
  end

  def login
    user = PostmanUser.find_by(email: params[:session][:email].to_s.downcase)
    if user
      flash[:success] = "Login succesful."
      redirect_to user
    else
      flash.now[:error] = "Email address or password is invalid"
      render 'loginpage'
    end

  end

  def help
  end

  def tos
  end

end
