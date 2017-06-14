Rails.application.routes.draw do
  resources :motion_events
  root 'static_pages#home'
end
