Rails.application.routes.draw do
  devise_for :users, :path_names => {
      :verify_authy => "/verify-token",
      :enable_authy => "/enable-two-factor",
      :verify_authy_installation => "/verify-installation",
      :authy_onetouch_status => "/onetouch-status"
  }, controllers: { sessions: 'users/sessions' }
  get "/profile", to: "home#index"
  root to: "articles#index"
  resources :articles
  match '*path', to: ->(env) { [404, {}, ['Not Found']] }, via: :all
end
