Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get '/services', to: 'services#index'
    post '/services', to: 'services#create'
    get '/services/:id', to: "services#show"
    put '/services/:id', to: 'services#update'
    delete '/services/:id', to: 'services#destroy'

    get '/bookings', to: 'bookings#index'
    post '/bookings', to: 'booking#create'
    get '/bookings/:id', to: "bookings#show"
    put '/bookings/:id', to: 'bookings#update'
    delete '/bookings/:id', to: 'bookings#destroy'
end
