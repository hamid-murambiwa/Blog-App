class PostsController < ApplicationController
  def index
    @user = User.find(params[:id])
    @posts = Post.where(id: params[:id])
  end

  def show
    @user = User.find(params[:id])
    @post = Post.find(params[:id])
    @comments = Comment.where(id: params[:id])
  end
end
