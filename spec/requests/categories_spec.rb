require 'rails_helper'

describe 'Categories API', type: :request do
    describe 'GET /categories' do
        it 'returns all categories' do
            get '/categories'
            expect(response).to have_http_status(:success)
        end
    end

end