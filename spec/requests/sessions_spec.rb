require 'rails_helper'

describe 'Check if user is logged in', type: :request do
  before do
    post '/api/v1/registrations', params: {
      user: {
        email: 'johndoe@gmail.com',
        password: 'asdfasdf',
        password_confirmation: 'asdfasdf'
      }
    }

    get '/api/v1/logged_in'
  end

  it 'return user with logged in status as true' do
    data = JSON.parse(response.body)
    expect(data['logged_in']).to eq(true)
  end
end

describe 'Check if user is logged out', type: :request do
  before do
    post '/api/v1/registrations', params: {
      user: {
        email: 'johndoe@gmail.com',
        password: 'asdfasdf',
        password_confirmation: 'asdfasdf'
      }
    }

    delete '/api/v1/logout'
  end

  it 'return logged out status as true' do
    data = JSON.parse(response.body)
    puts data
    expect(data['logged_out']).to eq(true)
  end
end
