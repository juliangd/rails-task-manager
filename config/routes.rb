Rails.application.routes.draw do
  get 'tasks/new', to: 'tasks#new', as: :new
  patch 'tasks/:id', to: 'tasks#update"', as: :update
  get 'tasks/:id', to: 'tasks#show', as: :task
  post 'tasks', to: 'tasks#create', as: :submit
  get 'tasks', to: 'tasks#index', as: :tasks
  #USER STORY - I can get a new task -
  #-first get the form submitted
  #post w params to DB
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
