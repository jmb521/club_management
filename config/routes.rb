Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :profiles, only: [:show, :edit, :update]
  resources :kids
  resources :families, only: [:show, :edit, :update]
  resources :membership_infos, only: [:show, :edit, :update]
  scope "/admin" do
    get '/dashboard' => 'admin#dashboard'
    get '/new_member' => 'admin#new_member'
    post '/approve_member' => 'admin#approve_member'
    resources :users do
      resources :profiles
      resources :membership_infos
      resources :kids
      resources :families
    end
end

  get '/' => "application#home"
  get '/user_home' => "application#user_home"

end
