Rails.application.routes.draw do
  
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
