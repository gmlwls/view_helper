class CommentsController < ApplicationController
  def create
    Comment.create(content: params[:content], post_id: params[:post_id])
    redirect_to :root
  end

  def edit
    @comment = Post.find(params[:post_id]).comments.find(params[:comment_id])
  end

  def update
    comment = Post.find(params[:post_id]).comments.find(params[:comment_id])
    comment.content = params[:content]
    comment.save
    
    redirect_to :root
  end

  def destroy
   comment = Post.find(params[:post_id]).comments.find(params[:comment_id])
   comment.destroy
   
   redirect_to :root
  end
end
