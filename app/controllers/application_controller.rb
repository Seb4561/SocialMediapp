class PostController < ApplicationCenter

  def index 
    @posts = Post.all
  end
end
