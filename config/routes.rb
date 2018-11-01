Rails.application.routes.draw do
  resources :boards do
    resources :comments, module: :board, only: [:create, :destroy]
  end
  resources :posts do
    resources :comments, module: :post, only: [:create, :destroy]
  end
  root 'posts#index'
  get 'home/index'
  post '/tinymce_assets' => 'tinymce_assets#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
