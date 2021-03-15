require 'rails_helper'

describe 'user registration', type: :request do
  before do
    post '/api/v1/registrations', params: {
      user: {
        email: 'johndoe@gmail.com',
        password: 'asdfasdf',
        password_confirmation: 'asdfasdf'
      }
    }
  end

  it 'returns http response 200' do
    expect(response).to have_http_status(200)
  end

  it 'return user with created status' do
    data = JSON.parse(response.body)
    puts data
    expect(data['status']).to eq('created')
  end
end

describe 'checking if user exists', type: :request do
  before do
    post '/api/v1/registrations', params: {
      user: {
        email: 'johndoe@gmail.com',
        password: 'asdfasdf',
        password_confirmation: 'asdfasdf'
      }
    }

    get '/api/v1/registrations/johndoe@gmail.com'
  end

  it 'returns user details if user exists' do
    data = JSON.parse(response.body)
    expect(data['user']['email']).to eq('johndoe@gmail.com')
  end
end
