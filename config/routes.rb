Mixeight::Application.routes.draw do
  devise_for :admins
  devise_for :users
  
  resources :groups do
    member do
      get 'join'
    end
  end

  resources :songs
  
  root to: 'songs#index'
  match '/help', to: 'static_pages#help'
  match '/about', to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  match '/songs' , to: 'songs#index'
  match '/groups', to: 'groups#index'
end
