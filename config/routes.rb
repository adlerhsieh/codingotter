Rails.application.routes.draw do

  root to: redirect("/screencasts")

  resources :screencasts, only: %i[index show]

end
