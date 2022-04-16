Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # List all tasks
  get 'tasks', to: 'tasks#index'

  # create a new task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # edit a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # Show the information of one specific task
  get 'tasks/:id', to: 'tasks#show', as: :task

  #delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
