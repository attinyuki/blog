class BlogsController < ApplicationController
  def index
    @article = Article.all.order("id DESC")
  end
  
  def new
  end
  
  def create
    Article.create(blog_params)
  end

  private
  def blog_params
    params.permit(:title, :image, :text)
  end
end
