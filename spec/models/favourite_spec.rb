require 'rails_helper'

RSpec.describe Favourite, type: :model do
  describe 'Associations' do
    context 'Belonging to user and plan models' do
      it { should belong_to(:user) }
      it { should belong_to(:plan) }
    end
  end

end