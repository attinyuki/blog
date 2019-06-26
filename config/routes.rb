Rails.application.routes.draw do
  devise_for :users
  
  root 'blogs#index' #ルートパス指定
  resources :blogs
  # get 'blogs' => 'blogs#index'  #一覧画面
  # get 'blogs/new' => 'blogs#new' #投稿画面
  # post 'blogs' => 'blogs#create' #投稿機能
  # delete 'blogs/:id' => 'blogs#destroy' #削除機能
  # patch 'blogs/:id' => 'blogs#update' #編集機能
  # get 'blogs/:id/edit' => 'blogs#edit' #編集画面
  # get 'blogs/:id' => 'blogs#show' #投稿詳細画面
  
  # resources :users, only: [:show]
  get 'users/:id' => 'users#show' #userのidをparamasから取り出す
  
  get 'users/sgin_up' => 'devise/registrations#new' #新規登録画面
  

end
