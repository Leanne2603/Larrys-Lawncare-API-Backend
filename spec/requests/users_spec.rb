require 'rails_helper'

describe 'Users API', type: :request do
    describe 'POST /sign_in' do
        it 'checks user' do
            post '/sign_in'
            expect(response).to have_http_status(401)
        end
    end

end