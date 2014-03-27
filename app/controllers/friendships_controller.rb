class FriendshipsController < ApplicationController
  before_filter :load_friend

  def create
    current_user.friends << @friend
    UserMailer.new_friend(current_user, User.find(params[:friend_id])).deliver
    render :nothing => true, :status => :ok
  end

  def destroy
    current_user.friends.delete(@friend)
    render :nothing => true, :status => :ok
  end

  private

  def load_friend
    @friend = User.find(params[:friend_id])
  end
end