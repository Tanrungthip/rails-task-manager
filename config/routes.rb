Rails.application.routes.draw do
  # Read all
  get '/tasks', to: 'tasks#index', as: :tasks

  # Create
  # this is a form page
  get '/tasks/new', to: 'tasks#new', as: :new_task
  # this is where the form get sent
  post '/tasks', to: 'tasks#create'

  # Update
  # this is a form page (specific page u want to edit)
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # this is where the edit gets sent
  patch 'tasks/:id', to: 'tasks#update'

  # delete
  delete 'tasks/:id', to: 'tasks#destroy'
  # Read one
  get 'tasks/:id', to: 'tasks#show', as: :task
end
