Rails.application.routes.draw do
  resources :task_lists do
    resources :task_items
  end

  root "task_lists#index"
end
