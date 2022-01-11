Rails.application.routes.draw do
  resources :books
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show'
  get 'books/:id/edit' => 'books#edit'
  root to: 'homes#top'

  # root：ｱｸｾｽして一番最初のｺﾝﾄﾛｰﾗへの指示,rootは主にtoppageなどに用いられます。

  post 'books' => 'books#create'
  patch 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#destroy'

  # httpﾘｸｴｽﾄ  urlﾊﾟｽ  ｺﾝﾄﾛｰﾗｰ名#ｱｸｼｮﾝ名

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
