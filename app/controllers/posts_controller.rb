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

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(mass_params)

    if @post.save
      redirect_to('index')
    else
    render('new')
    end
  end

  private

  def mass_params
    params.require(:post).permit(:title, :text)
  end
end
