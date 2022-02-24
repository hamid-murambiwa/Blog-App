class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.where(id: params[:id])
    @user_posts = Post.where(id: params[:id])
  end
end
