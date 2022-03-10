class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @current_user = User.find(params[:user_id])
    @comment = Comment.new(comment_params)
    @post = Post.find(params[:post_id])

    set_comment

    if @comment.save
      redirect_to user_post_path(@comment.user_id, @comment.post_id), notice: 'You successfully created a comment!'
    else
      render :new, alert: 'An error has occurred while creating your comment!'
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    @post.comments_counter -= 1
    @post.save
    redirect_to user_post_path(@comment.user_id, @comment.post_id)
    flash[:success] = 'Comment was deleted!'
  end

  private

  def set_comment
    @comment.post_id = params[:post_id]
    @comment.user_id = params[:user_id]
  end

  def comment_params
    params.require(:comment).permit(:text, :post_id)
  end
end
