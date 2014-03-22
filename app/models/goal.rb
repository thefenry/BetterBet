class Goal < ActiveRecord::Base
  attr_accessible :title, :description, :bet_amount, :start_date, :end_date, :owner_id, :buddy_id
  belongs_to :owner, foreign_key: "owner_id", class_name: "User"
  belongs_to :buddy, foreign_key: "friend_id", class_name: "User"
  validates_presence_of :title, :bet_amount, :start_date, :end_date, :owner_id

  def duration
    self.end_date - self.start_date
  end

  def time_remaining
    self.end_date - Time.now
  end

  def started?
    Time.now >= self.start_date
  end

  def countdown
    # return 0 if time_remaining <= 0
    # if started?


    # # ########################################################
    # duration unless started?
    # if started? && ( time_remaining > 0 )
    #   time_remaining
    # else #started? && time_remaining <= 0
    #   0
    # end
  end

end