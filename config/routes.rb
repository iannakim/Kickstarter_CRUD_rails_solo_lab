Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  
  get "/projects", to: "projects#index", as: "projects" #projects_path
  get "/projects/new", to: "projects#new", as: "new_project"
  post "/projects", to: "projects#create"
  get "/projects/:id", to: "projects#show", as: "project" #project_path(id) or an instance project_path(@project)
  get '/projects/:id/edit', to: 'projects#edit', as: 'edit_project'
  patch '/projects/:id', to: 'projects#update'
  delete 'projects/:id', to: 'projects#destroy'

end
