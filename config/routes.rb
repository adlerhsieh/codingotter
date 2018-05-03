Rails.application.routes.draw do

  root to: "screencasts#index", as: :screencasts

  get "/author", to: "misc#author", as: "author"

  get "/:id", to: "screencasts#show", as: :screencast

end
