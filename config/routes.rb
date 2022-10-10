Rails.application.routes.draw do


  root 'homes#top'

  namespace :user do
    resources :items, only: [:index, :show]
    resources :materials, only: [:index, :show, :create, :destroy]
    get 'material/all_destroy'
    resources :stores, only: [:index, :show]
    resources :reshipes
  end
  namespace :store do
    resources :genres, only: [:index, :create, :edit, :update]
    resources :items
  end
  namespace :admin do
    resources :stores, only: [:index, :edit, :update]
    resources :users, only: [:index, :edit, :update]
    resources :reshipes, only: [:index, :destroy]
  end


  devise_for :user,controllers: {
    sessions: "user/sessions"
  }

  devise_for :store,controllers: {
    sessions: "store/sessions"
  }

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
