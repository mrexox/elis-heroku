class MainPageController < ApplicationController

  layout 'application'

  def home
    @slides = SliderItem.sorted
    @posts = Post.sorted.limit(3)
  end

  def blog
    @posts = Post.sorted.limit(5)
  end

  def shop
  end
end
