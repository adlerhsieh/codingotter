Rails.application.routes.draw do

  root to: redirect("/screencasts")

  get '/author', to: "misc#author", as: "author"

  resources :screencasts, only: %i[index show]

end
