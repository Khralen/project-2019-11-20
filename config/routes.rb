Rails.application.routes.draw do
  resources :articles, :categories, :application, :welcome

  root to: 'welcome#index'

  resources :articles do
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
