class LikesController < ApplicationController

  def index
    @likes = Like.all
  end

  def create
    @post = Post.find(params[:post_id])
    if current_user
      if current_user.has_liked?(@post)
        like_message = "You liked this"
      else
        @post.likes.create(user: current_user)
        like_message = "You liked this"
      end
    else
      like_message = "Please login!"
    end
    render json: { new_like_count: @post.likes.count, like_message: like_message }
  end

end
