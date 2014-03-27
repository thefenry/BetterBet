require 'spec_helper'

describe ChargesController do
  context '#create' do
    let(:user) { create :user }

    it 'should create a charge' do
      Goal.stub(:find) { user }
    end
  end
end