require 'spec_helper'

describe ChargesController do
  context '#create' do
    let(:user) { create :user }
    let(:goal) { create :goal }

    it 'should create a charge' do
      Goal.stub(:find) { user }
      goal.stub(:bet_in_cents) { 1 }
      goal.stub(:find_recipient) { 1 }
      Stripe::Transfer.stub(:create) { { id: 1 } }
      expect(response).to be_redirect
    end
  end
end