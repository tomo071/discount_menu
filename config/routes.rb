Rails.application.routes.draw do

  namespace :user do
    get 'material/index'
  end
  root 'homes#top'
  namespace :admin do
    get 'reshipes/index'
  end
  namespace :user do
    get 'stores/index'
    get 'stores/show'
  end
  namespace :user do
    resources :reshipes
  end
  namespace :user do
    resources :items, only: [:index, :show]
    resources :materials, only: [:index, :show, :create, :destroy]
    get 'material/all_destroy'
  end
  namespace :store do
    resources :genres, only: [:index, :create, :edit, :update]
    resources :items
  end
  namespace :admin do
    resources :stores, only: [:index, :edit, :update]
    resources :users, only: [:index, :edit, :update]
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
