Rails.application.routes.draw do

  devise_for :users
  resources :task_lists do
    resources :task_items do
    	member do
    		patch :complete
    	end
    end
  end

  root "task_lists#index"
end
