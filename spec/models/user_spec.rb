require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create!(email: 'johndoe@example.com', password: 'password',password_confirmation: 'password') }

  it 'is valid with valid attributes' do
    expect(user).to be_valid
  end

  it 'is not valid without an email' do
    user.email = nil
    expect(user).to_not be_valid
  end

  it 'is not valid with a password less than 6 characters' do
    user.password = 'pass'
    user.password_confirmation = 'pass'
    expect(user).to_not be_valid
  end

  describe 'Associations' do
    context 'Having many from the different existent models' do
      it { should have_many(:favourites) }
      it { should have_many(:plans) }
    end
  end

end