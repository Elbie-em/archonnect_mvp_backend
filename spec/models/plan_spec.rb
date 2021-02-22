require 'rails_helper'

RSpec.describe Plan, type: :model do
  describe 'Associations' do
    context 'Having many from the different existent models' do
      it { should have_many(:favourites) }
      it { should have_many(:users) }
    end
  end

end