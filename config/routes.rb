Rails.application.routes.draw do

  root 'homes#top'
  namespace :admin do
    get 'reshipes/index'
  end
  namespace :user do
    get 'stores/index'
    get 'stores/show'
  end
  namespace :user do
    get 'reshipes/new'
    get 'reshipes/index'
    get 'reshipes/show'
    get 'reshipes/edit'
  end
  namespace :user do
    resources :items, only: [:index, :show]
  end
  namespace :store do
    resources :genres, only: [:index, :create, :edit, :update]
    resources :items
  end
  namespace :admin do
    resources :stores, only: [:index, :edit, :update]
  end
  namespace :admin do
    get 'users/index'
    get 'users/edit'
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
