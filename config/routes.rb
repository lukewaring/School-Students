Rails.application.routes.draw do

  get '/schools', to: "schools#index", as: 'schools'
  get '/schools/:id/support', to: "schools#support", as: 'support'
  post '/schools/:id/support/post', to: "schools#support_post", as: 'support_post'
  get '/schools/:id', to: "schools#show", as: 'school'

  get '/students/:id/edit', to: "students#edit", as: 'edit_student'
  patch '/students/:id', to: "students#update"
  delete '/students/:id', to: "students#delete", as: 'delete_student'
  get '/students/new', to: "students#new", as: 'new_student'
  post '/students/', to: "students#create"
  get '/students/:id', to: "students#show", as: 'student' 
end
