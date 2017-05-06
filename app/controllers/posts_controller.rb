class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
  end
  
  def create
    Post.create(title: params[:title], content: params[:content])
    redirect_to :root
  end

  def edit
    @post = Post.find(params[:post_id])
  end

  def update
    post = Post.find(params[:post_id])
    post.title=params[:title]
    post.content=params[:content]
    post.save
    
    redirect_to :root
  end

  def destroy
    post = Post.find(params[:post_id])
    post.destroy
    
    redirect_to :root
  end
end
