Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'blogs#index' #ルートパス指定
  get 'blogs' => 'blogs#index'  #一覧画面
  get 'blogs/new' => 'blogs#new' #投稿画面
  post 'blogs' => 'blogs#create' #投稿機能
  delete 'blogs/:id' => 'blogs#destroy' #削除機能
  
  patch 'blogs/:id' => 'blogs#update' #編集機能
  get 'blogs/:id/edit' => 'blogs#edit' #編集画面
  
  
  get 'users/:id' => 'users#show'
  #userのidをparamasから取り出す


end
