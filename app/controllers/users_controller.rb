class UsersController < ApplicationController
  # before_action :authenticate_user!

  def index
    @users = User.all
    @current_user = current_user
  end

  def show
    @user = User.find(params[:id])
  end

  def apitoken
    @user = User.find(params[:id])
    render json: @user.apitoken, status: :ok
  end
end
