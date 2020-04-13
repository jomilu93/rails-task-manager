Rails.application.routes.draw do
  get "tasks", to: "tasks#index"
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  get "tasks/:id", to: "tasks#details", as: :task

  get "tasks/:id/edit", to: "tasks#edit", as: :task_edit
  patch "tasks/:id", to: "tasks#update", as: :task_patch

  delete "tasks/:id", to: "tasks#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
