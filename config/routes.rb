Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get '/login', to: 'devise/sessions#new'
    get '/logout', to: 'devise/sessions#destroy'
    get '/sign-up', to: 'devise/registrations#new'
  end

  root 'home#index'
  get '/faq' => 'home#faq'
  get '/about' => 'home#about'
  get '/contact' => 'home#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
