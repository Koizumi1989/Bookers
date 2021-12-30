Rails.application.routes.draw do
  get 'books/index'
  get 'books/show/:id' => 'books#show'
  get 'books/edit/:id' => 'books#edit'
  get '/' => 'homes#top'
  post 'books' => 'books#create'
  patch 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
