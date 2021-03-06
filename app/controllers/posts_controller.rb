class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.find(params[:user_id])
  end

  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
    @comments = Comment.where(post_id: params[:id]).where(user_id: params[:user_id])
  end

  def new
    @post = Post.new
  end

  def create
    @current_user = User.find(params[:user_id])
    @post = @current_user.posts.new(mass_params)
    @post.user = @current_user
    @post.comments_counter = 0
    @post.likes_counter = 0
    @post.update_posts_counter

    if @post.save
      redirect_to user_posts_path, notice: 'Post was successfully created.'
    else
      render :new, alert: 'An error occured!'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @user = User.find(params[:user_id])
    @comments = Comment.where(post_id: params[:id])
    @likes = Like.where(post_id: params[:id])
    @likes.each(&:destroy)
    @comments.each(&:destroy)
    @post.destroy!
    @user.posts_counter -= 1
    @user.save
    redirect_to user_posts_path
    flash[:success] = 'Comment was deleted!'
  end

  private

  def mass_params
    params.require(:post).permit(:title, :text, :likes_counter, :comments_counter)
  end
end
