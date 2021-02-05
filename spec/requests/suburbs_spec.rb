require 'rails_helper'

describe 'Suburbs API', type: :request do
    describe 'GET /suburbs' do
        it 'returns all suburbs' do
            get '/suburbs'
            expect(response).to have_http_status(:success)
        end
    end

end