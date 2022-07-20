Rails.application.routes.draw do
<<<<<<< Updated upstream
  get 'messages/index'
  root to: "messages#index"
end
=======
  devise_for :users
  root to: "messages#index"
  resources :users, only: [:edit, :update]
end
>>>>>>> Stashed changes
