require 'rails_helper'

describe 'Bookings API', type: :request do
    describe 'GET /bookings' do
        it 'returns all bookings' do
            get '/bookings'
            expect(response).to have_http_status(401)
        end
    end

end