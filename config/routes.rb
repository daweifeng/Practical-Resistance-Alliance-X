Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)

  get 'category/index'
  get 'welcome/index'
  get 'category/:kind', to: 'category#show'
  get 'toolkit/:id', to: 'toolkit#display'
  get 'newtoolkit', to: 'toolkit#new'
  get 'newcategory', to: 'category#new'
  get 'signup', to: 'users#new', as: 'signup'
  get 'edit_request', to: 'users#edit_request', as: 'edit_request'
  post 'keep_new', to: 'users#keep_new', as: 'keep_new'
  post 'keep_old', to: 'users#keep_old', as: 'keep_old'

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  
  # post requests
  post 'toolkit', to: 'toolkit#create'
  post 'category', to: 'category#create'

  get 'toolkit/:id/edit', to: 'toolkit#edit', as: 'edit_toolkit'

  get 'toolkit/:id/delete', to: 'toolkit#delete', as: 'delete_toolkit'

  # put requests
  put 'toolkit/:id', to: 'toolkit#update'

  resources :toolkit do
    collection do
      post :search
    end
  end

end
