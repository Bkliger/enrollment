Rails.application.routes.draw do
  root "enrollments#index"
  get "enrollments", to: "enrollments#index", as: "enrollments"
  get "/enrollments/new", to: "enrollments#new", as: "new_enrollment"
  post "/enrollments", to: "enrollments#create"
  get "/enrollments/:enrollment_id/edit", to:"enrollments#edit", as: "edit_enrollment"
  patch "/enrollments/:enrollment_id", to:"enrollments#update"
  get "/enrollments/:enrollment_id", to:"enrollments#show", as:"enrollment"
  delete "/enrollments/:enrollment_id", to:"enrollments#destroy", as: "destroy_enrollment"

end
