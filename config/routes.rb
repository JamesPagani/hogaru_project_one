Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/basics'
  get 'static_pages/ruby'
  get 'static_pages/git'
end
