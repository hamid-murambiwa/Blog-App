class LikesController < ApplicationController
  def create
    set_like
    @like = @current_user.likes.new(user_id: params[:user_id], post_id: params[:post_id])

  respond_to do |format|
    if @like.save
      format.html { redirect_to user_post_path(@like.user_id, @like.post_id), notice: 'You liked this post!' }
    else
      format.html { redirect_to user_post_path(@like.user_id, @like.post_id), notice: 'An error has occurred! Please try again.' }
    end
  end
  end

  private

  def set_like
    @like = Like.new
    @current_user = User.find(params[:user_id])
  end
end
