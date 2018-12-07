# frozen_string_literal: true

Rails.application.routes.draw do
  get 'landing/index'

  root 'landing#index'
end
