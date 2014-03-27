require 'spec_helper'

describe ChargesController do
  context '#create' do
    let(:user) { create :user }
    let(:goal) { create :goal }
    before { StripeMock.start }
    after { StripeMock.stop }

    it 'should create a charge' #do
      # post :create, goal_id: goal.id, id: 1
      # customer = Stripe::Customer.create({
      #   email: 'johnny@appleseed.com',
      #   card: 'void_card_token'
      # })
      # Goal.stub(:find) { goal }
      # Goal.stub(:find_recipient) { customer }
      # # # Striped::Proxy::Account.stub(:Transfer) { Stripe::StripeObject }
      # # Stripe::StripeObject.stub(:id) { 1 }
      # # Stripe::Transfer.stub(:create) { { id: 1 } }
      # expect(response).to be_redirect
    # end
  end
end