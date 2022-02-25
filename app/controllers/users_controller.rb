class UsersController < ApplicationController
  def index
    @users = User.all
    @current_user = current_user
  end

  def show
    @user = User.where(id: params[:id])
    @posts = Post.where(id: params[:id])
  end
end
