class BlogsController < ApplicationController
  def index
    @articles = Article.all.order("id DESC").page(params[:page]).per(7)
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
