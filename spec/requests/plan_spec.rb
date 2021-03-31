require 'rails_helper'

describe 'get all plans route', type: :request do
  let!(:plans) { FactoryBot.create_list(:plan, 20) }

  before do
    post '/api/v1/registrations', params: {
      user: {
        email: 'johndoe@gmail.com',
        password: 'asdfasdf',
        password_confirmation: 'asdfasdf'
      }
    }
    get '/api/v1/plans', params: {}
  end

  it 'returns all house plans' do
    data = JSON.parse(response.body)
    expect(data['result'].size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end
end
