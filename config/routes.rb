Rails.application.routes.draw do
  root 'welcome#index'
  resources :images, only:[:index]
  resources :ledgers
  resources :users do
    resources :onesies do
    end
    collection do
      post '/login', to: 'users#login'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
