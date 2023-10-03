# frozen_string_literal: true

Rails.application.routes.draw do
  scope :api do
    scope :v1 do
      devise_for :users, path: '', path_names: {
        sign_in: 'login',
        sign_out: 'logout',
        registration: 'signup'
      }, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
    end
  end

  namespace :api do
    namespace :v1 do
      get '/health_check', to: 'health_check#show'
      get '/current_user', to: 'current_user#index'
    end
  end
end
