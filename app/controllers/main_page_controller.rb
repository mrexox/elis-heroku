class MainPageController < ApplicationController

  layout 'application'

  def home
    @slides = SliderItem.sorted
    @new_posts = Post.sorted.first(3)
  end

  def blog
    @new_posts = Post.sorted.first(7)
  end

  def shop
  end
end
