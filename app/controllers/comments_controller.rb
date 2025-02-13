class CommentsController < ApplicationController

    def new
        @comment = Comment.new

    def create
            @comment = Comment.new(comment_params)

    if @comment.save
            redirect_to @comment
    else
        render :new
    end   
end

    private

    def comment_params
        params.expect(:comment: [ content ])
    end
end
