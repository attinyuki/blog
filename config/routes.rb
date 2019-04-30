Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'blogs' => 'blogs#index'  #一覧画面
  get 'blogs/new' => 'blogs#new' #投稿画面


end
