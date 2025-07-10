Rails.application.routes.draw do
  devise_for :kids
  devise_for :parents

  namespace :kids do
    get "dashboard", to: "dashboard#index"
  end

  namespace :parents do
    get "dashboard", to: "dashboard#index"
    resources :kids, only: [:index, :new, :create]
  end

  get "pages/home"
  root "pages#home"

  resources :lessons
  get "lessons/modules/:module_number", to: "lessons#by_module", as: :module_lessons

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
