Rails.application.routes.draw do
  #root
  root to:"main#index"
  #about
  get "about", to: "about#index"
  #registrations
  get "sign_up", to: "auth/registration#new"
  post "sign_up", to: "auth/registration#create"
  #LogOut
  delete "log_out",to: "log_out#destroy"
  #SignIn
  get "sign_in", to: "auth/signin#new"
  post "sign_in", to: "auth/signin#create"
  #Update password
  get "edit_password", to: "edit_password#new"
  patch "edit_password",to: "edit_password#update"
end
