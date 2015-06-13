Rails.application.routes.draw do

  devise_for :users
  get 'welcome/index'
  resources :task_lists do
    resources :task_items do
    	member do
    		patch :complete
    	end
    end
  end

  authenticated :user do
    root "task_lists#index", as: "authenticated_root"
  end

  root 'welcome#index'
end
