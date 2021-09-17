Rails.application.routes.draw do
  
  #root
  root to:"main#index"

  #about
  get "about", to: "about#index"



end
