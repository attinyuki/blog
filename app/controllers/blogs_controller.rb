class BlogsController < ApplicationController
  before_action :move_to_index, except: :index
  #move_to_indexをnewとcreateの前のみ動かす
  def index
    @articles = Article.all.order("id DESC").page(params[:page]).per(7)
  end
  
  def new
  end
  
  def create
    Article.create(title: blog_params[:title], image: blog_params[:image], text: blog_params[:text], user_id: current_user.id)
    #(blog_params)
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
