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

end
