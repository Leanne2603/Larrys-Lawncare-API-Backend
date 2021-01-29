Rails.application.routes.draw do

    get '/suburbs', to: 'suburbs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get '/services', to: 'services#index'
    post '/services', to: 'services#create'
    get '/services/:id', to: "services#show"
    put '/services/:id', to: 'services#update'
    delete '/services/:id', to: 'services#destroy'

    get '/bookings', to: 'bookings#index'
    post '/bookings', to: 'bookings#create'
    get '/bookings/:id', to: "bookings#show"
    put '/bookings/:id', to: 'bookings#update'
    delete '/bookings/:id', to: 'bookings#destroy'

    # sign in route for business owner only - no option for sign up at this point as only one user
    post '/sign_in', to: 'users#sign_in'

end
