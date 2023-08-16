Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: %i[new create]
  end
  # route to get the new plant form
  # to POST to save that new plant
end
