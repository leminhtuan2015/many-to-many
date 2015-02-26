Rails.application.routes.draw do
   root 'homes#index'
   resources :users do
    resource :user_skills
   end
   resources :skills
end
