require 'rails_helper'

describe 'Services API', type: :request do
    describe 'GET /services' do
        it 'returns all services' do
            get '/services'
            expect(response).to have_http_status(:success)
        end
    end

    describe 'POST /services' do
        it 'creates a new booking' do
            post '/services', params: {service: {service_name: "Mowing", price: "30", category_id: 1}}
            expect(response).to have_http_status(401)
        end
    end
end