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
    @post = current_user.posts.new(mass_params)
    # @post.user_id = current_user.id
    @post.comments_counter = nil
    @post.likes_counter = nil
    @post.update_posts_counter

    if @post.save
      redirect_to "/users/#{n_post.user.id}/posts/"
    else
    render('new')
    end
  end

  private

  def mass_params
    params.require(:post).permit(:title, :text)
  end
end
