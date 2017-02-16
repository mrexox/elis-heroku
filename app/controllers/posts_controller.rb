# coding: utf-8
class PostsController < ApplicationController

  before_action :check_logged_in
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Пост #{@post.name} добавлен"
      redirect_to(posts_path)
    else
      flash[:error] = "Пост #{@post.name} не был добавлен"
      render('new')
    end

  end

  def show
  end

  def index
    @posts = Post.sorted
  end

  def edit
  end

  def delete
  end

  private

  def post_params
    params.require(:post).permit(:image, :name, :text)
  end
end
