Rails.application.routes.draw do
  resources :cts_items
  root "cts_items#index"
end
