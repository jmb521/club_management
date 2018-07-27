Rails.application.routes.draw do
  resources :membership_infos
  resources :kids
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => "application#home"
end
