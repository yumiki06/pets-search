class PostsController < ApplicationController
  before_action :set_tweet, only: [:edit, :show]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def edit
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end

  def show
  end

  private
  def post_params
    params.require(:post).permit(:name, :text, :image)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id]) 
  end
end
