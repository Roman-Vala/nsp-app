Rails.application.routes.draw do
  resources :paint_jobs do
    resources :measurements
  end

  root "paint_jobs#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
