class PostsController < ApplicationController
    def index
        @posts = Post.all
 end

 def show
    @post = Post.find(params[:id])
 end

 def new
    @post = Post.new
 end

 def create
    @post = post.new(post_params)

    if @post.save
        redirect_to @post
    else 
    render :new
    end
end

private

def post_params
    params.expect(post: [:title, :description, :media_url])
 end
end