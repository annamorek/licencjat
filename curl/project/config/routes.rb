Rails.application.routes.draw do

  devise_for :users
  get 'static_pages/home'
  get 'static_pages/lod'
  get 'static_pages/zasady'
  get 'static_pages/sprzet'
  get 'static_pages/fizyka'
  get 'static_pages/kontakt'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :categories
  resources :words

  get 'search', to: 'search#search'

    resources :words do
      collection { get :search }
    end

end