Rails.application.routes.draw do


  root "home#index"

  devise_scope :user do
    # This block of code is mandatory for devise to support logout in rails 7
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end

  devise_for :users
  resources 'groups', only: %w[new show create destroy]
  resources 'trans', only: %w[new show create destroy]
end
