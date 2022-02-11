Rails.application.routes.draw do
  # httpﾘｸｴｽﾄ  urlﾊﾟｽ  ｺﾝﾄﾛｰﾗｰ名#ｱｸｼｮﾝ名
  resources :books
  # resources付けることによって、下記ルーティングが自動で作成され、
  # books controllerに対応付られる。下記ルーティングは記載不要。

  # get 'books' => 'books#index'
  # get 'books/:id' => 'books#show'
  # get 'books/:id/edit' => 'books#edit'
  # post 'books' => 'books#create'
  # patch 'books/:id' => 'books#update'
  # delete 'books/:id' => 'books#destroy'

  root to: 'homes#top'
  # root：ｱｸｾｽして一番最初のｺﾝﾄﾛｰﾗへの指示,rootは主にtoppageなどに用いられます。



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
