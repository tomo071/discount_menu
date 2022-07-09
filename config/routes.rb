Rails.application.routes.draw do
  
  namespace :store do
    get 'genres/index'
    get 'genres/edit'
  end
  namespace :admin do
    get 'stores/index'
    get 'stores/edit'
  end
  namespace :admin do
    get 'users/index'
    get 'users/edit'
  end
  namespace :store do
    get 'items/new'
    get 'items/index'
    get 'items/show'
    get 'items/edit'
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
