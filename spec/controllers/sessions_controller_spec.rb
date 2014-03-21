require 'spec_helper'

describe do SessionsController
  let!(:user) { :user }
  describe "#new" do
    it "should be successful" do
      get :new
      expect(response).to be_success
    end
  end

  describe "#create" do
    it "should initialize a new session" do

    end
  end

  describe "#destroy" do
    it "should clear a session"
  end
end