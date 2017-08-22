class LikesController < ApplicationController
  protect_from_forgery
  def new
    @like = Like.new
  end

  def create
    @like = Like.create(like_params)
    redirect_to posts_url
  end

  private

  def like_params
    p params
    params.require(:like).permit(:post_id)
  end
end
