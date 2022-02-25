class LikesController < ApplicationController
    def create
      @post = Post.find(params[:post_id])
      new_like = current_user.likes.new(
        user_id: current_user.id,
        post_id: @post.id
      )
      
      if new_like.save
        redirect_to "http://127.0.0.1:3000/posts/show/?id=#{@post.id}", notice: 'Success!'
      else
        return 'Error occured!'
      end
    end
end