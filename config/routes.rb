Rails.application.routes.draw do
  devise_for :users

  resources :customers 
    resources :paint_jobs do
      resources :measurements
    end

  root "paint_jobs#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/paint_jobs/:id/invoice', to: 'paint_jobs#invoice'
end

# devise_for :users, :skip => [:registrations]
# as :user do
# get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
# put 'users' => 'devise/registrations#update', :as => 'user_registration'
# end
