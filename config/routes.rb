Mixeight::Application.routes.draw do
  devise_for :users

  resources :songs
  root to: 'static_pages#about'
  
  match '/help', to: 'static_pages#help'
  match '/about', to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  match '/songs' , to: 'songs#index'
end
