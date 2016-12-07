Rails.application.routes.draw do
  devise_for :users
  root "devise/sessions#new"
  resources :students do
    get :subjects
  end
end
