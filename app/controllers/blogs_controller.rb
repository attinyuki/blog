class BlogsController < ApplicationController
  before_action :move_to_index, except: :index
  #move_to_indexをnewとcreateの前のみ動かす
  def index
    @articles = Article.includes(:user).page(params[:page]).per(7).order("id DESC")
  end
  
  def new
  end
  
  def create
    Article.create(title: blog_params[:title], image: blog_params[:image], text: blog_params[:text], user_id: current_user.id)
  end
  
  def destroy
    @article = Article.find(params[:id])
    if @article.user_id == current_user.id
      @article.destroy
    end
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    @article = Article.find(params[:id])
    if @article.user_id == current_user.id
      @article.update(blog_params)
    end
  end



  private
  def blog_params
    params.permit(:title, :image, :text)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
    #ユーザーがログインしてないとき、indexアクションを実行
  end
end
