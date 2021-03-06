require 'spec_helper'

describe DashboardController do
  let!(:user) { create :user }
  let(:goals) { create_list(:goal, 1, owner_id: user.id) }
  before(:each) { session[:user_id] = user }

  context '#index' do
    it "should be okay" do
      get :index
      expect(response).to be_ok
    end

    it "should assign the user's latest_goal to @goal" do
      get :index
      expect(assigns :goals).to eq goals
    end

    it "should assign @friends" do
      get :index
      expect(assigns :friends).to_not be nil
    end
  end

  context '#landing' do
    it "should be okay" do
      get :landing
      expect(response).to be_ok
    end
  end
end