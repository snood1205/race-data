# frozen_string_literal: true

Rails.application.routes.draw do
  resources :teams, only: %i[index show create update] do
    get :drivers, on: :member
  end

  resources :drivers, only: %i[index show create update]

  get 'up' => 'rails/health#show', as: :rails_health_check
end
